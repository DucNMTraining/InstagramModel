protocol SavedLocation {
    var mainPhoto: String
    var name: String
    var rate: Float?
    var reviewCount: Int?
    var description: String?
    var id: String
}

protocol SavedLocationScreenData {
    var savedLocations: [SavedLocation]
}