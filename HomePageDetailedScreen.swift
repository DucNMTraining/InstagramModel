protocol LocationDetail {
    var photos: String
    var title: String
    var location: String
    var distance: String
    var rate: Double
    var reviewCount: Int
    var description: String
    var id: String
}

protocol NearbyHotel {
    var mainPhoto: String
    var name: String
    var rate: Double?
    var reviewCount: Int?
    var id: String
}

protocol Review {
    var userImage: String
    var username: String
    var userLocation: String
    var rate: Double
    var content: String?
    var postedTime: Date
    var isLiked: Bool?
    var likeCount: Int?
    var id: String
}

protocol NearbyPopularPlace {
    var mainPhoto: String
    var name: String
    var rate: Double?
    var reviewCount: Int?
    var id: String
}

protocol HomePageDetailedScreenData {
    var locationDetails: [LocationDetail]
    var nearbyHotels: [NearbyHotel]
    var reviews: [Review]
    var nearbyPopularPlaces: [NearbyPopularPlace]
}