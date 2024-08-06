import Fluent
import FluentPostgresDriver
import NIOSSL
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
  // uncomment to serve files from /Public folder
  // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

  // app.databases.use(
  //   DatabaseConfigurationFactory.postgres(
  //     configuration: .init(
  //       hostname: Environment.get("DATABASE_HOST") ?? "localhost",
  //       port: Environment.get("DATABASE_PORT").flatMap(Int.init(_:))
  //         ?? SQLPostgresConfiguration.ianaPortNumber,
  //       username: Environment.get("DATABASE_USERNAME") ?? "vapor_username",
  //       password: Environment.get("DATABASE_PASSWORD") ?? "vapor_password",
  //       database: Environment.get("DATABASE_NAME") ?? "vapor_database",
  //       tls: .prefer(try .init(configuration: .clientDefault)))
  //   ), as: .psql)

  app.databases.use(
    DatabaseConfigurationFactory.postgres(
      configuration: .init(
        hostname: "localhost",
        port: 5432,
        username: "postgres",
        password: "",
        database: "turnone_dev",
        tls: .prefer(try .init(configuration: .clientDefault)))
    ), as: .psql)

  // app.migrations.add(CreateTodo())
  app.migrations.add(CreateRace())
  app.migrations.add(CreateSchedule())
  app.migrations.add(AddScheduleRaceRelation())

  // register routes
  try routes(app)
}
