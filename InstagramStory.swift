protocol Story {
    var postedTime: Date
    var contentUrl: String
    var id: String
}

protocol UserStory {
    var userImage: String
    var username: String
    var stories: [Story]
    var id: String
}

protocol StoryScreenData {
    var userStories: [UserStory]
}

// https://www.figma.com/file/HyamcRAggY2Oz8gqrmT1vY/Instagram-UI-Screens-(Community)?type=design&node-id=0-543&mode=design&t=4nNpjXE9XflMBH6P-0