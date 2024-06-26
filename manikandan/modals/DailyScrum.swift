import Foundation

struct DailyScrum:Identifiable{
    let id = UUID()
    var title:String
    var attendees:[Attendee]
    var lengthInMinutes:Int
    var lengthInMinutesAsDouble:Double{
        get{
            Double(lengthInMinutes)
        }
        set{
            lengthInMinutes=Int(newValue)
        }
    }
    var theme:Theme
    init(title: String,attendees:[String],lengthInMinutes: Int, theme: Theme) {
        self.title = title
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
        self.attendees = attendees.map { Attendee(name: $0) }
    }
    static var emptryScrum:DailyScrum{
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }

}
extension DailyScrum{
    struct Attendee:Identifiable{
        let id : UUID
        let name:String
        init(id: UUID = UUID(),name: String) {
            self.id=id
            self.name = name
        }
    }
}


extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}
