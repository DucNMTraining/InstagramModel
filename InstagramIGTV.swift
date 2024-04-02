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

// https://www.figma.com/file/HyamcRAggY2Oz8gqrmT1vY/Instagram-UI-Screens-(Community)?type=design&node-id=0-1432&mode=design&t=F49Kr7kKvNct1aOI-0