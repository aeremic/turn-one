import Fluent
import Vapor

func routes(_ app: Application) throws {
    try app.register(collection: RaceController())
    try app.register(collection: ChampionshipController())
}
