import Foundation
import Alamofire

class DevelopersViewModel: ObservableObject {
    @Published var query: String = ""
    @Published var isLoading: Bool = false;
    @Published var developers: [Developer] = []
    
    func onSearch() {
        if !query.isEmpty {
            self.isLoading = true
            
            AF.request("https://api.github.com/search/users", parameters: SearchParams(q: query))
                .responseDecodable(of: Search.self) { response in
                    do {
                        let search = try response.result.get()
                        self.developers = search.items
                        self.isLoading  = false
                    } catch {
                        debugPrint(error)
                    }
                }
        }
    }
}

let developers: [Developer] = [
    Developer(
        id: 0,
        name: "William",
        company: "@naveteam",
        login: "powilliam",
        avatar_url: "https://avatars.githubusercontent.com/u/55867831?v=4",
        bio: "Mobile Developer at @naveteam",
        followers: 32,
        following: 61
    )
]

struct Developer: Decodable, Identifiable {
    var id: Int
    var name: String?;
    var company: String?;
    var login: String;
    var avatar_url: String;
    var bio: String?;
    var followers: Int?;
    var following: Int?;
}
