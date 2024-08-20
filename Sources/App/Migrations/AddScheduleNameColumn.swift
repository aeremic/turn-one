import Fluent

struct AddScheduleNameColumn: AsyncMigration {
  func prepare(on database: Database) async throws {
    try await database.schema("schedules")
      .field("name", .string)
      .update()
  }

  func revert(on database: Database) async throws {
    try await database.schema("schedules")
      .deleteField("name")
      .update()
  }
}
