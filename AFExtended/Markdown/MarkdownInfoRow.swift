//
//  MarkdownRow.swift
//  AFExtended
//
//  Created by Zohra Achour on 09/12/2021.
//

import SwiftUI

struct MarkdownInfoRow: View {
    let info: MarkdownInfo
    var body: some View {
        VStack(alignment: .leading)  {
            HStack {
                Text("\(info.id)")
                    .frame(width: 50, height: 50)
                    .background(Circle().foregroundColor(.yellow))
                
                Text(.init(info.info))
            }
            
            HStack {
                if info.id == 0 {
                    Text("\(info.urlLink)")
                        .padding(.leading, 60)
                } else if info.id == 1 {
                    Text(.init(info.urlLink))
                        .padding(.leading, 60)
                } else {
                    Text("[Apple.com](https://apple.com)")
                        .padding(.leading, 60)
                }
                Image(systemName: info.image)
                    .foregroundColor(info.color)
            }
        }
    }
}
