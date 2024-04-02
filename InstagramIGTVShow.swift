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

// https://www.figma.com/file/HyamcRAggY2Oz8gqrmT1vY/Instagram-UI-Screens-(Community)?type=design&node-id=0-585&mode=design&t=F49Kr7kKvNct1aOI-0