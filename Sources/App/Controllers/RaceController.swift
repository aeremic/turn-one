import Fluent
import FluentSQL
import Vapor

final class RaceDto: Content, @unchecked Sendable {
    var id: Int?
    var title: String
    var date: Date
    var schedules: [Schedule]

    init() {
        self.id = nil
        self.title = ""
        self.date = Date()
        self.schedules = []
    }

    init(
        id: Int? = nil, title: String, date: Date, schedules: [Schedule]
    ) {
        self.id = id
        self.title = title
        self.date = date
        self.schedules = schedules
    }
}

struct RaceController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let races = routes.grouped("races")

        races.get(use: self.index)
        // races.post(use: self.create)
        races.group(":id") { race in
            race.get(use: self.get)
        }

        races.group("getByChampionship", ":id") { race in
            race.get(use: self.getByChampionship)
        }
    }

    @Sendable
    func index(req: Request) async throws -> [Race] {
        let races: [Race] = try await Race.query(on: req.db)
            .with(\.$schedules)
            .sort(Race.self, \.$date)
            .all()

        return races
    }

    @Sendable
    func getByChampionship(req: Request) async throws -> [RaceDto] {
        guard let requestId = req.parameters.get("id")
        else {
            throw Abort(.badRequest)
        }

        guard let championshipId = Int(requestId)
        else {
            throw Abort(.badRequest)
        }

        let races: [Race] = try await Race.query(on: req.db)
            .filter(\.$championship.$id == championshipId)
            .with(\.$schedules)
            .sort(Race.self, \.$date)
            .all()

        var result: [RaceDto] = []
        for race in races {
            result.append(
                RaceDto(id: race.id, title: race.title, date: race.date, schedules: race.schedules))
        }

        return result
    }

    @Sendable
    func get(req: Request) async throws -> Race {
        guard let race = try await Race.find(req.parameters.get("id"), on: req.db)
        else {
            throw Abort(.notFound)
        }

        return race
    }

    @Sendable
    func create(req: Request) async throws -> Race {
        let race = try req.content.decode(Race.self)

        // race.date = Date()
        // let schedules = [
        //   Schedule(title: "schedule1", date: Date()),
        //   Schedule(title: "schedule2", date: Date()),
        // ]

        try await race.save(on: req.db)

        // try await race.$schedules.create(schedules, on: req.db)

        return race
    }
}
