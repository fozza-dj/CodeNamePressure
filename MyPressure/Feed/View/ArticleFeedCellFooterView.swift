//
//  ArticleFeedCellFooterView.swift
//  MyPressure
//
//  Created by fozza on 2023/9/14.
//

import Foundation
import SwiftUI

struct ArticleFeedCellFooterView : View {
    private enum Constant {
        static let likeButtonHeight = 18.0
        static let likeButtonWidth = 18.0
    }
    
    var  body: some View {
        Button(action: {}) {
            HStack(spacing: 5) {
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: Constant.likeButtonWidth, height: Constant.likeButtonHeight)
                
            }
        }
        .foregroundColor(.red)
    }
}

#Preview {
    ArticleFeedCellFooterView()
}
