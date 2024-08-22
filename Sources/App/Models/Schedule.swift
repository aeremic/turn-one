import Fluent
import Vapor

import struct Foundation.Date
import struct Foundation.UUID

final class Schedule: Model, Content, @unchecked Sendable {
  static let schema: String = "schedules"

  @ID(custom: "id")
  var id: Int?

  @Field(key: "title")
  var title: String

  @Field(key: "date")
  var date: Date

  @Parent(key: "race_id")
  var race: Race

  @Field(key: "race_id")
  var raceId: Int

  init() {}

  init(id: Int? = nil, title: String, date: Date) {
    self.id = id
    self.title = title
    self.date = date
  }
}
