import Fluent
import Vapor

struct ChampionshipController: RouteCollection {
    func boot(routes: any Vapor.RoutesBuilder) throws {
        let championships = routes.grouped("championships")

        championships.get(use: self.index)
    }

    @Sendable
    func index(req: Request) async throws -> [Championship] {
        let championships = try await Championship.query(on: req.db)
            .all()

        return championships
    }
}
