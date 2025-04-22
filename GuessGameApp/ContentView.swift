//
//  ContentView.swift
//  GuessGameApp
//
//  Created by Ana Cvasniuc on 16/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var correctAnswer = 0
    @State var score = 0
    @State var gameTitle = "?"
    @State var gameSubtitle = ""
    
    
    var body: some View {
        VStack {
            Text(gameTitle)
                .font(.system(size: 40, weight: .semibold))
                .padding(.top, 100)
            Text(gameSubtitle)
                .font(.system(size: 20))
                .padding(100)
          
            HStack {
                Spacer()
                Text("Score \(score)")
                    .font(.system(size: 15, weight: .semibold))
                
            }
            Button(action: {
                checkAnswer(answer: 0)
            }, label: {
                Image("cat")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 24.0))
                
            })
            Button(action: {
                checkAnswer(answer: 1)
            }, label: {
                Image("fox")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 24.0))
            })
            Button(action: {
                checkAnswer(answer: 2)
            }, label: {
                Image("shiba")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 24.0))
            })
            Spacer()
            
        }
        .padding()
    }
    
    
    func checkAnswer(answer: Int) {
        if answer == correctAnswer {
            score += 1
            gameTitle = "Success!"
        } else {
            if score != 0 {
                score -= 1
            }
            gameTitle = "Failed!"
        }
        if correctAnswer == 0 {
            gameSubtitle = "Correct answer is cat"
        } else if correctAnswer == 1 {
            gameSubtitle = "Correct answer is fox"
        } else if correctAnswer == 2{
            gameSubtitle = "Correct answer is shiba"
        }
        randomizeCorrectAnswer()
    }
    
    func randomizeCorrectAnswer(){
        let randomCorrectAnswer = Int.random(in: 0..<3)
        correctAnswer = randomCorrectAnswer
    }
}


#Preview {
    ContentView()
}

