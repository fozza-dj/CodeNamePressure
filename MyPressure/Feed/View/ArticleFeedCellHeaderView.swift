//
//  FeedCellHeaderView.swift
//  MyPressure
//
//  Created by fozza on 2023/9/2.
//

import Foundation
import SwiftUI

struct ArticleFeedCellHeaderView : View {
    var body: some View {
        HStack(spacing: 5) {
            Image(uiImage: UIImage(named: "7f9147a5ly1fzxlgxgzpij20e90fltsj.jpg")!)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(
                    VipBadgeView()
                        .offset(x: 16, y: 16)
                )
                .padding(.leading, 10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Username")
                    .font(Font.system(size: 16))
                    .foregroundStyle(Color(red: 242 / 255, green: 99 / 255, blue: 4 / 255))
                    .lineLimit(1)
                Text("2020-01-01 00:00")
                    .font(.system(size: 11))
                    .foregroundStyle(Color.gray)
            }
            .padding(.leading, 10)
            
            Spacer()
            
            Button(action: {
                print("Clicked Follow button")
            }) {
                Text("关注")
                    .font(.system(size: 14))
                    .foregroundStyle(Color.orange)
                    .frame(width: 50, height: 26)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color.orange, lineWidth: 1)
                    )
            }
            .padding(.trailing, 10)
        }
    }
}

#Preview {
    ArticleFeedCellHeaderView()
}
