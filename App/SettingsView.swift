//
//  SettingsView.swift
//  Meyveler
//
//  Created by Mehmet Arıkan on 24.08.2022.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(label:
                    HStack {
                        Text("Fructus".uppercased()).fontWeight(.bold)
                        Spacer()
                        Image(systemName: "info.circle")
                    }
                    ){
                        Text("Hello Word")
                    }
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                }// : Vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            }//: Scroll
        }// : Navigation
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
