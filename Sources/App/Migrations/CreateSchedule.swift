import Fluent

struct CreateSchedule: AsyncMigration {
  func prepare(on database: Database) async throws {
    try await database.schema("schedules")
      .id()
      .field("title", .string)
      .field("date", .date)
      .create()
  }

  func revert(on database: Database) async throws {
    try await database.schema("schedules").delete()
  }
}
