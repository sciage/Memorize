//
//  EmojiMemoryGameViewModel.swift
//  Memorize (iOS)
//
//  Created by Harish on 09/07/22.
//

import SwiftUI

//func createCardIndex(index: Int)-> String{
//    return "🚗"
//}


class EmojiMemoryGame {
    static let emojis = ["🚗","🚕", "🚙", "🚌","🚎","🏎", "🚓", "🚑","🚒","🚐", "🛻", "🚚"]

    //    private var model: MemoryGame<String> = MemoryGame<String>.init(numberOfPairsOfCards: 4, createCardContent: createCardIndex)

//    private var model: MemoryGame<String> = MemoryGame<String>.init(numberOfPairsOfCards: 4, createCardContent: {(index: Int)-> String in
//        return "🚗"
//    })
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>.init(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }

    }

    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    var cards : Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    
}
