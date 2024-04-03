protocol UserMessage {
    var userImage: String
    var username: String
    var isPostedStory: Bool?
    var isWatchedStory: Bool?
    var lastestMessageContent: String
    var lastestMessageTime: Date
    var id: String
}

protocol DirectMessageScreenData {
    var messages: [UserMessage]
}
