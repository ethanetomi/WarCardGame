//
//  ContentView.swift
//  WarCardGame
//
//  Created by Ethan Etomi on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Image("background-cloth")
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                
                Button("Deal") {
                    
                    print("Deal Cards")
                }
                .foregroundColor(.white)
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
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
        print("Deal Cards")
    }
}

#Preview {
    ContentView()
}
