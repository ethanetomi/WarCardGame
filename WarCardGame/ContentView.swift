//
//  ContentView.swift
//  WarCardGame
//
//  Created by Ethan Etomi on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = ("card8")
    @State var cpuCard = ("card13")
    
    var playerScore = 0
    var cpuScore = 0
    var body: some View {
        
        ZStack{
            Image("background-wood-grain")
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    deal()
                },
                       label: {
                    Image("button")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
   // Randomoize player and cpu card
   // and upadte the scores
        playerCard = "card" + String(Int.random(in: 2...14))
        cpuCard = "card" + String(Int.random(in: 2...13))
    }
}

#Preview {
    ContentView()
}
