protocol RecentActionUser {
    var userImage: String
    var username: String
    var id: String 
}

protocol Notification {
    var type: NotificationType
    var recentActions: [RecentActionUser]
    var mainPhoto: String?
    var likeCount: Int?
    var commentContent: String?
    var time: Date
}

enum NotificationType {
    case .like
    case .mention
    case .follow
}

protocol LikeScreenData {
    var followRequests: Int?
    var notifications: [Notification]
}

// https://www.figma.com/file/HyamcRAggY2Oz8gqrmT1vY/Instagram-UI-Screens-(Community)?type=design&node-id=0-641&mode=design&t=F49Kr7kKvNct1aOI-0