import Fluent
import Vapor

import struct Foundation.Date
import struct Foundation.UUID

final class Race: Model, Content, @unchecked Sendable {
  static let schema: String = "races"

  @ID(custom: "id")
  var id: Int?

  @Field(key: "title")
  var title: String

  @Field(key: "date")
  var date: Date

  @Children(for: \.$race)
  var schedules: [Schedule]

  init() {}

  init(id: Int? = nil, title: String, date: Date) {
    self.id = id
    self.title = title
    self.date = date
  }
}
