//
//  Essence.swift
//  baisi_swftUI
//
//  Created by jie.huang on 2022/3/18.
//

import SwiftUI

struct Essence: View {
    
    
    var body: some View {
        ZStack {
            VStack {
                Color("light_gray")
            }
            ListView()
        }
    }
}

struct Essence_Previews: PreviewProvider {
    static var previews: some View {
        Essence()
    }
}
