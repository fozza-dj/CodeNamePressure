//
//  UserModel.swift
//  MyPressure
//
//  Created by fozza on 2023/9/6.
//

import Foundation

public enum FollowStatus : Int, Decodable {
    case unfollow = 0
    case followed = 1
}

struct UserModel : Decodable {
    // Basic infomation
    let userID : String
    let nickname : String
    let avatarUrl : String
    
    // interaction
    var followStatus : FollowStatus
    
    // Business infomation
    let isVip : Bool
}
