//
//  FruitDetailView.swift
//  Fruits-App
//
//  Created by FFK on 24.10.2023.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruits: FruitModel
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    FruitHeaderView(fruits: fruits)
                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruits.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruits.gradientColors[0])
                        
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruits: fruits)
                        
                        Text("Learn more about \(fruits.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[0])
                        
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruits.title,displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruits: fruitsData[0])
    }
}
