import SwiftUI

@main
struct manikandanApp: App {
    var body: some Scene {
        WindowGroup {
            MeetingView()
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
