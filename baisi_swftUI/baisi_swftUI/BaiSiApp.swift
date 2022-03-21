//
//  baisi_swftUIApp.swift
//  baisi_swftUI
//
//  Created by jie.huang on 2022/3/18.
//

import SwiftUI

@main
struct baisi_swftUIApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .onAppear(perform: setupAppearance)
        }
    }
    
    func setupAppearance() {
        
        let backImage = UIImage(named: "back")
        let navBar = UINavigationBar.appearance();
        navBar.backIndicatorImage = backImage
        navBar.backIndicatorTransitionMaskImage = backImage
        navBar.shadowImage = UIImage()
        navBar.tintColor = UIColor(named: "navigation_tint")
        navBar.barTintColor = UIColor(named: "navigation_bar_tint")
    }
    
}
