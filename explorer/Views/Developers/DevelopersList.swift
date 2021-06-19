import SwiftUI

struct DevelopersList: View {
    @StateObject var developersViewModel: DevelopersViewModel
    
    var body: some View {
        LazyVStack {
            ForEach(developersViewModel.developers) { developer in
                DeveloperPreview(developer: developer)
            }
        }
    }
}

struct DevelopersView_Previews: PreviewProvider {
    static var previews: some View {
        DevelopersList(developersViewModel: DevelopersViewModel())
    }
}
