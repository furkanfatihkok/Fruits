//
//  FruitNutrientsView.swift
//  Fruits-App
//
//  Created by FFK on 24.10.2023.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruits: FruitModel
    
    let nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruits.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruits.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruits: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .preferredColorScheme(.dark)
            .padding()
    }
}
