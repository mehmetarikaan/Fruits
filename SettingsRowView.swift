//
//  SettingsRowView.swift
//  Meyveler
//
//  Created by Mehmet Arıkan on 24.08.2022.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String
    var body: some View {
        HStack{
            Divider().padding(.vertical, 5)
            Text(name).foregroundColor(Color.gray)
            Spacer()
            Text(content)
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Mehmet Arıkan")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
