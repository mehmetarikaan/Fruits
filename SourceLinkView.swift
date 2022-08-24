//
//  SourceLinkView.swift
//  Meyveler
//
//  Created by Mehmet Arıkan on 24.08.2022.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link(destination: URL(string: "https://google.com")!) {
                    Text("Wikipedia")
                    Image(systemName: "arrow.up.right.square")
                }
                .font(.footnote)
            }
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
