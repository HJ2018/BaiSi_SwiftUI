//
//  ListRow.swift
//  baisi_swftUI
//
//  Created by jie.huang on 2022/3/21.
//

import SwiftUI

struct ListRow: View {
    
    let name: String
    var body: some View {
        HStack(spacing: 15) {
            Image("tabBar_friendTrends")
                .renderingMode(.original)
                .resizable()
                .frame(width: 48, height: 48)
                .cornerRadius(8)
                .padding(EdgeInsets.init(top: 15, leading: 15, bottom: 15, trailing: 0))

            VStack(alignment: .leading, spacing: 5) {
                HStack(alignment: .top) {
                    Text(name)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.primary)
                        .padding(EdgeInsets.init(top: 15, leading: 5, bottom: 15, trailing: 0))
                    Spacer()
                    Text("2022-10-10")
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                        .padding(EdgeInsets.init(top: 15, leading: 5, bottom: 0, trailing: 10))
                }
                Text(name)
                    .lineLimit(1)
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                    .padding(EdgeInsets.init(top: 0, leading: 5, bottom: 15, trailing: 0))

            }
        }
        .background(Color("cell"))
        .cornerRadius(8)
        .padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 15))
    }
    

}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(name: "1")
    }
}
