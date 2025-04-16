//
//  ContentView.swift
//  GuessGameApp
//
//  Created by Ana Cvasniuc on 16/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Score 0")
                
            }
            Button(action: {
                print("test")
            }, label: {
                Image("cat")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 24.0))
                
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("fox")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 24.0))
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("shiba")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 24.0))
            })
            
            
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
