//
//  ContentView.swift
//  Memorize
//
//  Created by Chris Lantier on 1/16/24.
//

import SwiftUI

struct ContentView: View {

 
    var body: some View {
        HStack(spacing: -18.0) {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        
    }
}


struct CardView:  View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius:12).foregroundColor(.white)
                RoundedRectangle(cornerRadius:12).strokeBorder(lineWidth: 2)
                Text("👻")
                    .font(.largeTitle)
            } else {
              RoundedRectangle(cornerRadius:12)
            }
        })
            
        .padding()
        .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
