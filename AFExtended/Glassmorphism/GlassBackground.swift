//
//  GlassBackground.swift
//  AFExtended
//
//  Created by Zohra Achour on 21/06/2022.
//

import SwiftUI

struct GlassBackground: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            GeometryReader { geoMatrix in
                Text("\(geoMatrix.size.height)")
                
                Path { line in
                    line.move(to: CGPoint(x: 150, y: geoMatrix.size.height))
                    line.addCurve(to: CGPoint(x: 80, y: 300), control1: CGPoint(x: 120, y: 70), control2: CGPoint(x: 0, y: 0))
                }
            }
        }
        
       
    }
}

struct GlassBackground_Previews: PreviewProvider {
    static var previews: some View {
        GlassBackground()
    }
}
