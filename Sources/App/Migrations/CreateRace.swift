import Fluent

struct CreateRace: AsyncMigration {
  func prepare(on database: Database) async throws {
    try await database.schema("races")
      .id()
      .field("title", .string)
      .field("date", .date)
      .create()
  }

  func revert(on database: Database) async throws {
    try await database.schema("races").delete()
  }
}
