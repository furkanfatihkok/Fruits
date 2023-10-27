//
//  FruitModel.swift
//  Fruits-App
//
//  Created by FFK on 24.10.2023.
//

import SwiftUI

struct FruitModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
