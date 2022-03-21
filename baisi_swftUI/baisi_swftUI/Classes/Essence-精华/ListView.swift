//
//  ListView.swift
//  baisi_swftUI
//
//  Created by jie.huang on 2022/3/21.
//

import SwiftUI

struct ListView: View {
    
    @State private var data: [String] = ["1","2","3","4","5"]
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(data) { rowName in
                    NavigationLink(destination: DetailsView()) {
                        ListRow(name: rowName)
                    }
                }
            }
//            .background(Color("cell"))

        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}


extension String: Identifiable{
    
    public typealias ID = Int
    public var id: ID {
        return hashValue
    }
    
    
}

//extension Int: Identifiable{
//    public typealias ID = Int
//    public var id: ID {
//        return self
//    }
//}
//
//extension Array: Identifiable where Element:Identifiable{
//    public typealias ID = Int
//
//    public var id: Int{
//        var hasher = Hasher()
//        forEach {hasher.combine($0.id)}
//        return hasher.finalize()
//    }
//
//}
