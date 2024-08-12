import Fluent
import Vapor

import struct Foundation.Date
import struct Foundation.UUID

final class Schedule: Model, Content, @unchecked Sendable {
  static let schema: String = "schedules"

  @ID(custom: "id")
  var id: Int?

  @Field(key: "date")
  var date: Date

  @Parent(key: "race_id")
  var race: Race

  init() {}

  init(id: Int? = nil, date: Date) {
    self.id = id
    self.date = date
  }
}
