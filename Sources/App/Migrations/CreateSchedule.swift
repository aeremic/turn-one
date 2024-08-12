import Fluent

struct CreateSchedule: AsyncMigration {
  func prepare(on database: Database) async throws {
    try await database.schema("schedules")
      .field("id", .int, .identifier(auto: true))
      .field("title", .string)
      .field("date", .date)
      .create()
  }

  func revert(on database: Database) async throws {
    try await database.schema("schedules").delete()
  }
}
