import SwiftUI

@main
struct manikandanApp: App {
    @State private var scrums=DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
