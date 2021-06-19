import SwiftUI

@main
struct ExplorerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                DevelopersScreen()
                    .environmentObject(DevelopersViewModel())
            }
        }
    }
}
