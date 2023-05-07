import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack {
            Color(.systemMint).ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
                
                Image("falls")
                    .resizable()
                    .cornerRadius(30)
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                    Text("Niagara Falls")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    
                    VStack {
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.fill")
                        }
                    
                        Text("361 reviews")
                    }
                    .foregroundColor(.orange)
                    .font(.caption)
                    
                }
                Text("Come visit the falls for an experience of a lifetime.")
                
                HStack {
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white)
                .cornerRadius(30)
                .shadow(radius: 10)
            )
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
