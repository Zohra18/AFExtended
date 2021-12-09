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

struct Category: Identifiable {
    var id = UUID()
    var name: String
    var chosenCategory: Bool
}
