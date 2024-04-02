protocol MyLiveData {
    var watchingUsers: [WatchingUser]
    var comments: [UserComment]
}

protocol WatchingUser {
    var userImage: String
    var username: String
    var isWaving: Bool
    var id: String
}

protocol UserComment {
    var userImage: String
    var username: String
    var content: String
    var id: String
}