//
//  GlassBubbleBackground.swift
//  AFExtended
//
//  Created by Zohra Achour on 21/06/2022.
//

import SwiftUI

struct GlassBubbleBackground: View {
    
    var bubble: some View {
        Circle()
            .fill(RadialGradient(colors: [.blue, .purple], center: .center, startRadius: 0, endRadius: 80))
            .frame(width: 200, height: 200)
            .opacity(0.3)
            .overlay(Circle()
                .stroke(.white, lineWidth: 2)
                .blur(radius: 20)
            )
            .blur(radius: 40)
         
    }
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.pink, .purple, .blue], startPoint: .bottomLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
                .opacity(0.4)
            VStack {
                bubble
                bubble
            }
            
            
        }
    }
}

struct GlassBubbleBackground_Previews: PreviewProvider {
    static var previews: some View {
        GlassBubbleBackground()
    }
}
