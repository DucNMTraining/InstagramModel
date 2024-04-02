protocol Post {
    var mainPhoto: String
    var isMoreTwoPhotos: Bool?
    var isVideo: Bool?
    var id: String
}

protocol SearchPickScreenData {
    var posts: [Post]
}