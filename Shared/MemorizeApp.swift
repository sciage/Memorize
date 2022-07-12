//
//  MemorizeApp.swift
//  Shared
//
//  Created by Harish on 26/06/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
