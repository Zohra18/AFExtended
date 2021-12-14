//
//  EnumZipModels.swift
//  AFExtended
//
//  Created by Zohra Achour on 09/12/2021.
//

import SwiftUI

enum CategorySomething: String, CaseIterable {
    case rock = "Rock"
    case rap = "Rap"
    case metal = "Metal"
    case classic = "Classic"
}

class Category: Identifiable, Hashable {
    
    static func == (lhs: Category, rhs: Category) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(name)
        }
//
    internal init(id: Int, name: String, chosenCategory: Bool) {
        self.id = id
        self.name = name
        self.chosenCategory = chosenCategory
    }
    
    var id: Int
    var name: String
    var chosenCategory: Bool
}
