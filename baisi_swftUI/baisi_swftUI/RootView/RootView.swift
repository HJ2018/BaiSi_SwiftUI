//
//  RootView.swift
//  baisi_swftUI
//
//  Created by jie.huang on 2022/3/18.
//

import SwiftUI

struct RootView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        NavigationView{
            TabView(selection:$selection){
                Essence()
                    .tabItem { Item(type: .essence, selection: selection) }
                    .tag(ItemType.essence.rawValue)
                New()
                    .tabItem { Item(type: .new, selection: selection) }
                    .tag(ItemType.new.rawValue)
                
                Text("发布")
                    .tabItem {(Item(type: .publish, selection: selection))}
                    .tag(ItemType.publish.rawValue)
                
                FriendTrends()
                    .tabItem { Item(type: .friendTrends, selection: selection) }
                    .tag(ItemType.friendTrends.rawValue)
                Me()
                    .tabItem { Item(type: .me, selection: selection) }
                    .tag(ItemType.me.rawValue)
            }
            
            .navigationBarTitle(itemType.title, displayMode: .inline)

        }
    }
    
    enum ItemType: Int {
        case essence
        case new
        case publish
        case friendTrends
        case me
        
        var image: Image {
            switch self {
            case .essence:      return Image("tabBar_essence")
            case .new:          return Image("tabBar_new")
            case .publish:       return Image("tabBar_publish")
            case .friendTrends: return Image("tabBar_friendTrends")
            case .me:           return Image("tabBar_me")
            }
        }
        
        var selectedImage: Image {
            switch self {
            case .essence:      return Image("tabBar_essence_click_icon")
            case .new:          return Image("tabBar_new_click_icon")
            case .publish:      return Image("tabBar_publish_click_icon")
            case .friendTrends: return Image("tabBar_friendTrends_click_icon")
            case .me:           return Image("tabBar_me_click_icon")
            }
        }
        
        var title: String {
            switch self {
            case .essence:      return "精华"
            case .new:          return "热帖"
            case .publish:      return ""
            case .friendTrends: return "关注"
            case .me:           return "我的"
            }
        }

    }

    struct Item: View {
        let type: ItemType
        let selection: Int
        
        var body: some View {
            VStack {
                if type.rawValue == selection {
                    type.selectedImage
                } else {
                    type.image
                }
         
                Text(type.title)
            }
        }
    }
    
    private var itemType: ItemType { ItemType(rawValue: selection)! }

}



struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
