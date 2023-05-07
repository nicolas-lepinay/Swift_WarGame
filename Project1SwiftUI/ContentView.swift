import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Joueur").font(.headline).padding(.bottom, 9.0)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("Machine").font(.headline).padding(.bottom, 9.0)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                    
                }.foregroundColor(.white)
                Spacer()
                
            }
            
        }

    }
    
    func deal() {
        // Randomize player's cards
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card\(playerCardValue)"
        
        // Randomize the CPU's cards
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card\(cpuCardValue)"
        
        // Update the score
        if(playerCardValue > cpuCardValue) {
            playerScore += 1
        } else if(cpuCardValue > playerCardValue) {
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
