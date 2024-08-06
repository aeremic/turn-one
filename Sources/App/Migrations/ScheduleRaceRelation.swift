import Fluent

struct ScheduleRaceRelation: AsyncMigration {
  func prepare(on database: Database) async throws {
    try await database.schema("schedules")
      .field("race_id", .uuid, .references("races", "id"))
      .update()
  }

  func revert(on database: Database) async throws {
    try await database.schema("schedules")
      .deleteField("race_id")
      .update()
  }
}
