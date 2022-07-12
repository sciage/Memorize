//
//  ContentView.swift
//  Shared
//
//  Created by Harish on 26/06/22.
//

import SwiftUI

struct ContentView: View {
//    var emojis = ["🚗","🚕", "🚙", "🚌","🚎","🏎", "🚓", "🚑","🚒","🚐", "🛻", "🚚"]
//   @State var emojiCount = 12
    
    var viewModel: EmojiMemoryGame
    
   var body: some View {
       // 0..<6 -> 0 to 5
       // 0...6 -> 0 to 6
       VStack {
           ScrollView {
               LazyVGrid (columns: [GridItem(.adaptive(minimum: 65))], content: {
                   ForEach (viewModel.cards) { card in
                       RectangleView(card: card).aspectRatio(2/3, contentMode: .fit)
                   }
       //            ForEach (emojis, id: \.self, content: { emoji in
       //                RectangleView(content: emoji)
       //            })
               }).padding(.horizontal)
                   .foregroundColor(.red)
            
           }
           
       }
   }
    
   
}

struct RectangleView: View {
//    var content: String
//   @State var isFaceUp: Bool = true
    let card : MemoryGame<String>.Card
   
   var body: some View {
       ZStack {
           let shape = RoundedRectangle(cornerRadius: 20)
           if card.isFaceUp {
               shape.fill().foregroundColor(.white)
               shape.strokeBorder(lineWidth: 3)
               Text(card.content)
                   .font(.largeTitle)
           } else {
               shape.fill()
           }
       }
//       .onTapGesture {
//           isFaceUp = !isFaceUp
//       }
   }
}


//
//struct ContentView_Previews: PreviewProvider {
//    var game = EmojiMemoryGame()
//
//   static var previews: some View {
//       ContentView(viewModel: game)
//           .preferredColorScheme(.dark)
//       ContentView(viewModel: game)
//           .preferredColorScheme(.light)
//   }
//}




//
//Spacer()
//
//HStack {
//    plusButton
//    Spacer()
//    minusButton
//
//}.padding(.horizontal)
// .font(.largeTitle)


//var plusButton : some View {
//  return Button {
//      if emojiCount < emojis.count {
//          emojiCount += 1
//      }
//    } label: {
//        Image(systemName: "plus.circle")
//    }
//}
//
//var minusButton : some View {
//    Button {
//        if emojiCount > 1 {
//            emojiCount -= 1
//        }
//    } label: {
//        Image(systemName: "minus.circle")
//    }
//}
