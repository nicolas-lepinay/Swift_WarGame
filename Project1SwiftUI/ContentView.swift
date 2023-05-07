import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Image("button")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Joueur").font(.headline).padding(.bottom, 9.0)
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("Machine").font(.headline).padding(.bottom, 9.0)
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                    
                }.foregroundColor(.white)
                Spacer()
                
            }
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
