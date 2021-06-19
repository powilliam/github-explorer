import SwiftUI
import SDWebImageSwiftUI

struct DeveloperPreview: View {
    var developer: Developer
    
    @State private var isFavorited: Bool = false
    
    private func onFavorite() {
        withAnimation {
            isFavorited.toggle()
        }
    }
    
    var body: some View {
        HStack {
            WebImage(url: URL(string: developer.avatar_url))
                .resizable()
                .indicator(.activity)
                .transition(.fade(duration: 1.0))
                .frame(width: 42, height: 42)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Text(developer.login)
                .font(.caption)
                .foregroundColor(.primary)
            
            Spacer()
            
            Button(action: onFavorite) {
                Image(systemName: isFavorited ? "star.fill" : "star")
            }
            .foregroundColor(isFavorited ? .yellow : .primary)
        }
        .padding(.top)
    }
}

struct DeveloperPreview_Previews: PreviewProvider {
    static var previews: some View {
        DeveloperPreview(developer: developers[0])
            .padding()
    }
}
