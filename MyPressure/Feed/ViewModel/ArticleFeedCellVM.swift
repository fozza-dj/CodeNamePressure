//
//  ArticleFeedCellVM.swift
//  MyPressure
//
//  Created by fozza on 2023/9/13.
//

import Foundation

class ArticleFeedCellVM {
    let articleList : ArticleList
    
    init() {
        self.articleList = loadArticleListData("test1.json")
    }
}
