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

// https://www.figma.com/file/HyamcRAggY2Oz8gqrmT1vY/Instagram-UI-Screens-(Community)?type=design&node-id=0-425&mode=design&t=F49Kr7kKvNct1aOI-0