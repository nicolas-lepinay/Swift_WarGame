import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("falls")
                .resizable()
                .cornerRadius(30)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
            Text("Niagara Falls")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
