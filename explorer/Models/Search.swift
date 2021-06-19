import Foundation

struct SearchParams: Encodable {
    var q: String;
}

struct Search: Decodable {
    let total_count: Int
    let items: [Developer]
}
