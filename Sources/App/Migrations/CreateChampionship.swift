import Fluent

struct CreateChampionship: AsyncMigration {
    func prepare(on database: any FluentKit.Database) async throws {
        try await database.schema("championships")
            .field("id", .int, .identifier(auto: true))
            .field("title", .string)
            .field("description", .string)
            .create()
    }

    func revert(on database: any FluentKit.Database) async throws {
        try await database.schema("championships").delete()
    }
}
