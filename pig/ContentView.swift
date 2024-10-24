//
//  ContentView.swift
//  pig
//
//  Created by rohan patel on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var turnScore = 0
    @State private var gameScore = 0
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        ZStack {
            Color.gray.opacity(0.7).ignoresSafeArea()
            VStack {
                Image("Pig").resizable().frame(width: 150, height: 150)
                Text ("Pig")
                Spacer()
                CustomText(text: "Turn Score: \(turnScore)")
                CustomText(text: "Game Score: \(gameScore)")
               Image("pips \(randomValue)")
                  .resizable()
                  .frame(width: 150, height: 150)
                  .rotationEffect(.degrees(rotation))
                  .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                   .padding()
            }
        }
    }
}

struct CustomText: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size: 36))
        
    }
}

#Preview {
    ContentView()
}
