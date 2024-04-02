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