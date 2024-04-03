protocol BookingInformation {
    var destination: String
    var vehicle: String
    var checkInDate: Date
    var checkOutDate: Date
    var adultCount: Int?
    var childrenCount: Int?
    var roomCount: Int?
}