protocol UserProfile {
    var userImage: String?
    var fullname: String?
    var username: String
    var website: String?
    var bio: String?
    var email: String?
    var phone: String?
    var gender: String?
    var id: String
}

protocol ProfileEditScreenData {
    var userProfile: UserProfile
}