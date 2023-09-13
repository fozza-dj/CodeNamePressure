//
//  ArticleData.swift
//  MyPressure
//
//  Created by fozza on 2023/9/6.
//

import Foundation

struct ArticleList : Decodable {
    var list : [ArticleModel]
}

struct ArticleModel : Decodable {
    // basic infomation
    let articleID : String
    let author : UserModel
    let text : String
    let imageUrls : [String]
    // date? todo:dj1
    let date : Date?
    
    // interaction
    var commentCount : Int
    var likeCount : Int
    var isLiked : Bool
    
    // business infomation
}

func loadArticleListData(_ filename: String) -> ArticleList {
    guard let url = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Can't find \(filename) in main bundle.")
    }
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Can not load \(url)")
    }
    guard let articleList = try? JSONDecoder().decode(ArticleList.self, from: data) else {
        fatalError("Can not parse acticle list data.")
    }
    return articleList
}
