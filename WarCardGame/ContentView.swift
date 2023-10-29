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
            Image("background-wood-grain")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card10")
                    Spacer()
                    
                }
                Spacer()
                Image("button")
                HStack{
                    Spacer()
                    Text("Player")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("CPU")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                Spacer()
                
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
