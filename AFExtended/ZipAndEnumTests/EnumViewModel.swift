//
//  EnumViewModel.swift
//  AFExtended
//
//  Created by Zohra Achour on 13/12/2021.
//

import SwiftUI

class EnumViewModel: ObservableObject {
    
    @Published var setCategory: Set<Category> = []
}

extension Set: RandomAccessCollection {
    public func index(before i: Index) -> Index {
        return i
    } 
}
