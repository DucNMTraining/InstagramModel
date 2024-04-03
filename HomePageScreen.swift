protocol UserStory {
    var userImage: String
    var id: String
}

protocol Suggestion {
    var icon: String
    var title: String
    var id: String
}

protocol Coupon {
    var icon: String
    var title: String
    var description: String
    var id: String
}

protocol PopularLocation {
    var mainPhoto: String
    var name: String
    var rate: Float?
    var isLiked: Bool?
    var id: String
}

protocol HomePageScreenData {
    var userStories: [UserStory]
    var suggestions: [Suggestion]
    var coupons: [Coupon]
    var popularLocations: [PopularLocation]
}