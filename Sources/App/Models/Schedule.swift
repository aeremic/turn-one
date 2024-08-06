import Fluent
import Vapor

import struct Foundation.Date
import struct Foundation.UUID

final class Schedule: Model, Content, @unchecked Sendable {
  static let schema: String = "schedules"

  @ID(key: .id)
  var id: UUID?

  @Field(key: "date")
  var date: Date

  @Parent(key: "race_id")
  var race: Race

  init() {}

  init(id: UUID? = nil, date: Date) {
    self.id = id
    self.date = date
  }
}
