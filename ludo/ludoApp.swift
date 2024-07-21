//
//  ludoApp.swift
//  ludo
//
//  Created by Subash Shrestha on 20.07.24.
//

import SwiftUI

@Observable
class DiceData{
    var rolledNumber = 0
}
@main
struct ludoApp: App {
    @State var  diceData = DiceData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(diceData: diceData)
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView(diceData: diceData)
        }
    }
}
