import Fluent
import Vapor

final class Championship: Model, Content, @unchecked Sendable {
    static let schema = "championships"

    @ID(custom: "id")
    var id: Int?

    @Field(key: "title")
    var title: String

    @Children(for: \.$championship)
    var races: [Race]

    init() {}

    init(id: Int? = nil, title: String, date: Date, races: [Race]) {
        self.id = id
        self.title = title
        self.races = races
    }
}
