import SwiftUI

struct DevelopersScreen: View {
    @EnvironmentObject private var developersViewModel: DevelopersViewModel
    
    var body: some View {
        ScrollView {
            SearchView(developersViewModel: developersViewModel)
            DevelopersList(developersViewModel: developersViewModel)
        }
        .padding(.horizontal)
        .navigationTitle("Developers")
    }
}

struct ExplorerScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DevelopersScreen()
                .environmentObject(DevelopersViewModel())
        }
    }
}
