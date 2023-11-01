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
    
    @State var playerScore = 0
    @State var cpuScore = 0
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
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 7...14)
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        // update scores
        if playerCardValue > cpuCardValue{
            if playerCardValue == 14{
                // Bonus for rolling an ace
                playerScore += 5
                cpuScore -= 2
            }
            else{
                playerScore += 1
                cpuScore -= 1
            }
        }
        else if cpuCardValue > playerCardValue{
            if cpuScore == 14{
                // Bonus for rolling an ace
                cpuScore += 5
                playerScore -= 2
            }
            else{
                cpuScore += 1
                playerScore -= 1
            }
        }
        else{
            // Both get a score for tie
            cpuScore += 1
            playerScore += 1
        }
    }
}

#Preview {
    ContentView()
}
