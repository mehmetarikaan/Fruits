//
//  OnBoardingView.swift
//  Meyveler
//
//  Created by Mehmet Arıkan on 22.08.2022.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0..<5]){ item in
                MeyveCardView(fruit: item)
            }//: LOOP
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
