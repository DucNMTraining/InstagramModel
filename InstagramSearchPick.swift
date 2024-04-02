protocol Post {
    var mainPhoto: String
    var isMoreTwoPhotos: Bool?
    var isVideo: Bool?
    var id: String
}

protocol SearchPickScreenData {
    var posts: [Post]
}

// https://www.figma.com/file/HyamcRAggY2Oz8gqrmT1vY/Instagram-UI-Screens-(Community)?type=design&node-id=0-1056&mode=design&t=F49Kr7kKvNct1aOI-0