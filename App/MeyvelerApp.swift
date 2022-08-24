//
//  MeyvelerApp.swift
//  Meyveler
//
//  Created by Mehmet Arıkan on 22.08.2022.
//

import SwiftUI

@main
struct MeyvelerApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
