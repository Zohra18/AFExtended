//
//  GlassView.swift
//  AFExtended
//
//  Created by Zohra Achour on 17/06/2022.
//

import SwiftUI



struct GlassView: View {
    var body: some View {
        ZStack {
//            LinearGradient(colors: [.red, .orange, .yellow, .green, .mint, .cyan], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            GlassBubbleBackground()
                
            VStack {
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 200)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 2)
                        .blur(radius: 8)
                    )
                    .overlay(
                        HStack {
                            Text("Lightning")
                            Image(systemName: "bolt.fill")
                        }
                    
                    )
                    .background(
                        .ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                        
                    )
                   
                
            }
        }
    }
}

struct GlassView_Previews: PreviewProvider {
    static var previews: some View {
        GlassView()
    }
}
