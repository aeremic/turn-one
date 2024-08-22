import Fluent

struct CreateSchedule: AsyncMigration {
  func prepare(on database: Database) async throws {
    try await database.schema("schedules")
      .field("id", .int, .identifier(auto: true))
      .field("title", .string)
      .field("date", .datetime)
      .field("race_id", .int, .required)
      .foreignKey("race_id", references: Race.schema, .id, onDelete: .cascade)
      .create()
  }

  func revert(on database: Database) async throws {
    try await database.schema("schedules").delete()
  }
}
