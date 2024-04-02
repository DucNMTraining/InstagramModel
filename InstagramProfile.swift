protocol ProfileInformation {
    var userImage: String
    var username: String
    var fullname: String
    var bio: String
    var postCount: Int
    var followerCount: Int
    var followingCount: Int
    var highlightAlbums: [HighlightAlbum]
    var id: String
}

protocol HighlightAlbum {
    var albumImage: String
    var albumName: String
    var id: String
}

protocol Post {
    var mainPhoto: String
    var isMoreTwoPhotos: Bool?
    var isVideo: Bool?
    var id: String
}

protocol ProfileScreenData {
    var profile: ProfileInformation
    var posts: [Post]
}

// https://www.figma.com/file/HyamcRAggY2Oz8gqrmT1vY/Instagram-UI-Screens-(Community)?type=design&node-id=0-927&mode=design&t=F49Kr7kKvNct1aOI-0