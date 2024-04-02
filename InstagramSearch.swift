protocol SearchSuggestion {
    var icon: String?
    var title: String
    var id: String
}

protocol Post {
    var mainPhoto: String
    var isMoreTwoPhotos: Bool?
    var isVideo: Bool?
    var id: String
}

protocol SearchScreenData {
    var searchSuggestions: [SearchSuggestion]?
    var posts: [Post]
}