import Fluent

struct CreateRace: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("races")
            .field("id", .int, .identifier(auto: true))
            .field("title", .string)
            .field("date", .datetime)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("races").delete()
    }
}
