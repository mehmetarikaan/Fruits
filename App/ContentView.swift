//
//  ContentView.swift
//  Meyveler
//
//  Created by Mehmet Arıkan on 22.08.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(fruits: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
        )} //: NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
