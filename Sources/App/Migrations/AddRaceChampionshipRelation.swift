import Fluent

struct AddRaceChampionshipRelation: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("races")
            .field("championship_id", .int, .references("championships", "id"))
            .update()
    }

    func revert(on database: Database) async throws {
        try await database.schema("races")
            .deleteField("championship_id")
            .update()
    }
}
