//
//  OnboardingView.swift
//  Fruits-App
//
//  Created by FFK on 24.10.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [FruitModel] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
