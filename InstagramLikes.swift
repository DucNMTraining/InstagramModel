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
