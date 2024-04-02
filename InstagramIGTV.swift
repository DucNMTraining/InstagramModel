protocol Video {
    var thumbnail: String
    var videoDuration: Double
    var title: String?
    var postedUsername: String
    var viewCount: Int?
    var id: String
}

protocol IGTVScreenData {
    var videos: [Video]?
}