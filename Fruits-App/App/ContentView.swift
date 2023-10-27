//
//  ContentView.swift
//  Fruits-App
//
//  Created by FFK on 24.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    var fruits: [FruitModel] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { value in
                    NavigationLink(destination: FruitDetailView(fruits: value)) {
                        FruitRowView(fruit: value)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
