protocol Live {
    var userImage: String
    var username: String
    var watchingUsers: [WatchingUser]
    var notifications: [Notification]
    var conmmentSuggestions: [CommentSuggestion]
    var id: String
}

protocol WatchingUser {
    var userImage: String
    var username: String
    var id: String
}

protocol Notification {
    var type: NotificationType
    var userImage: String
    var username: String
    var commentContent: String?
    var id: String
}

enum NotificationType {
    case .userJoined
    case .requestJoin
    case .comment
}

protocol CommentSuggestion {
    var content: String
    var id: String
}

protocol LiveScreenData {
    var live: Live
}

// https://www.figma.com/file/HyamcRAggY2Oz8gqrmT1vY/Instagram-UI-Screens-(Community)?type=design&node-id=0-343&mode=design&t=4nNpjXE9XflMBH6P-0