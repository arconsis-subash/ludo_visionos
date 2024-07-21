
//
//  ContentView.swift
//  ludo
//
//  Created by Subash Shrestha on 20.07.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State private var enlarge = false
    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    var diceData: DiceData

    var body: some View {
        VStack{
            Text("Number in the 🎲").bold()
            Text(diceData.rolledNumber == 0 ? "🎲" : "\(diceData.rolledNumber)")
        }
        .task {
           await openImmersiveSpace(id: "ImmersiveSpace")
        }
        
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(diceData: DiceData())
}

