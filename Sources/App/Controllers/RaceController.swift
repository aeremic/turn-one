import Fluent
import Vapor

struct RaceController: RouteCollection {
  func boot(routes: RoutesBuilder) throws {
    let races = routes.grouped("races")

    races.get(use: self.index)
  }

  @Sendable
  func index(req: Request) async throws -> [Race] {
    try await Race.query(on: req.db).all()
  }
}
