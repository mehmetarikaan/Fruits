//
//  FruitDetailView.swift
//  Meyveler
//
//  Created by Mehmet Arıkan on 23.08.2022.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    var fruits: Fruit
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    // Header
                    FruitHeaderView(fruits: fruits)
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruits.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruits.gradientColors[1])
                        // Headline
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // Nutrients
                        FruitNutrientsView(fruits: fruits)
                        // Subheadline
                        Text("Learn more about \(fruits.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[1])
                        // Description
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
            }//: SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATIONVIEW
    }
}
//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FruitDetailView(fruits: fruitsData[1])
        }
    }
}
