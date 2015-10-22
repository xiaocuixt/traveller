//
//  UserModel.swift
//  traveller
//
//  Created by xiaocui on 15/10/22.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

class UserModel: NSObject {
    var id:String
    var name:String
    var avatar:String
    var profession:String   //职业
    var solar:String        //星座
    var mood:String   //心情
    var age:String
    var sex:String
    var favorited:String  //收藏
    init (id:String, name:String, avatar:String, profession:String, solar:String, mood:String, age:String, sex:String,favorited:String) {
        self.id = id
        self.name = name
        self.avatar = avatar
        self.profession = profession
        self.solar = solar
        self.mood = mood
        self.age = age
        self.sex = sex
        self.favorited = favorited
    }
    
}
