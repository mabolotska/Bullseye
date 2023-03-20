//
//  ContentView.swift
//  Bullseye
//
//  Created by Maryna Bolotska on 02/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisble = false
    @State private var newAlertIsVisble = false
    @State private var sliderValue = 50.0
    @State private var game: Game = Game ()
    
    
    var body: some View {
        VStack {
            Text("⛳️\n Put The Bullseye As Close As You Can To")
                .kerning(2.0)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello SwiftUI")
                self.alertIsVisble = true
            } ) {
                Text("Hit Me")
            }
            .alert(isPresented: $alertIsVisble, content: {
                var roundedValue: Int = Int(self.sliderValue.rounded())
                
                return Alert(title: Text("Hello there"), message: Text("The slider value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Awesome")))
            })
            Button(action: {
                print("Who is there?")
                self.newAlertIsVisble = true
            } ) {
                Text("Knock Knock")
            }
            .alert(isPresented: $newAlertIsVisble, content: {
                return Alert(title: Text("Who is there?"), message: Text("Little old lady"), dismissButton: .default(Text("Little old lady who?")))
            })
            .padding()
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            ContentView()
                .previewLayout(.fixed(width: 568, height: 320))
        }
    }

