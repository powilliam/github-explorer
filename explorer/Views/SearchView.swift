import SwiftUI

struct SearchView: View {
    @StateObject var developersViewModel: DevelopersViewModel
    
    var body: some View {
        TextField("Search", text: $developersViewModel.query, onCommit: developersViewModel.onSearch)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .textContentType(.username)
            .keyboardType(.webSearch)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(developersViewModel: DevelopersViewModel())
    }
}
