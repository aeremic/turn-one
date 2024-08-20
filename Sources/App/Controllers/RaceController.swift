import Fluent
import Vapor

struct RaceController: RouteCollection {
  func boot(routes: RoutesBuilder) throws {
    let races = routes.grouped("races")

    races.get(use: self.index)
    // races.post(use: self.create)
    races.group(":id") { race in
      race.get(use: self.get)
    }
  }

  @Sendable
  func index(req: Request) async throws -> [Race] {
    try await Race.query(on: req.db).all()
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
    try await race.save(on: req.db)

    return race
  }
}
