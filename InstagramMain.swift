protocol UserStory {
    var userImage: String
    var username: String
    var isLive: Bool? 
}

protocol Post {
    var authorImage: String
    var authorName: String
    var location: String?
    var isVerified: Bool?
    var photos: [String]
    var likeCount: Int?
    var lastestAction: LastestActionUser?
    var description: String?
    var isLiked: Bool?
}

protocol LastestActionUser {
    var userImage: String
    var username: String
}

protocol HomeData {
    var userStories: [UserStory]
    var posts: [Post]
}