//
//  ArticleFeedCellView.swift
//  MyPressure
//
//  Created by fozza on 2023/9/11.
//

import Foundation
import SwiftUI

struct ArticleFeedCellBodyView : View {
    let article = loadArticleListData("test1.json").list[0]
    
    var body: some View {
        VStack {
            ArticleFeedCellHeaderView()
            
            Text(article.text)
                .font(.system(size: 17))
            
            if !article.imageUrls.isEmpty {
                ImageUtils.loadImage(name: article.imageUrls[0])
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width - 30, height: (UIScreen.main.bounds.width - 30) * 0.75)
                    .clipped()
            }
//            article.imageUrls.forEach { str in
//                ImageUtils.loadImage(name: str)
//            }
        }
    }
}

#Preview {
    ArticleFeedCellBodyView()
}
