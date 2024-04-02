protocol IGTVShow {
    var title: String
    var postedUsername: String
    var postedUserImage: String
    var isFollowing: Bool
    var postedTime: Date
    var viewCount: Int?
    var commentCount: Int?
    var videoDuration: Double?
    var videoUrl: String
    var id: String
}

protocol IGTVShowScreenData {
    var shows: [IGTVShow]
}