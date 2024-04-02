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

// https://www.figma.com/file/HyamcRAggY2Oz8gqrmT1vY/Instagram-UI-Screens-(Community)?type=design&node-id=0-21&mode=design&t=F49Kr7kKvNct1aOI-0