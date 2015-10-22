//
//  ListViewController.swift
//  traveller
//
//  Created by xiaocui on 15/10/22.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

//创建内存数据库
var users: [UserModel] = []

class ListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    //数字颜色
    @IBOutlet weak var totalNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalNumber.textColor = UIColor(red: 3/255, green: 169/255, blue: 244/255, alpha: 1)

        users = [
            UserModel(id: "1", name: "Lina", avatar: "user", profession: "模特", solar: "白羊座", mood: "又到换季的季节了", age: "23", sex: "male", favorited: "fav"),
            UserModel(id: "2", name: "Tom", avatar: "user2", profession: "高管", solar: "白羊座", mood: "我擦，这是什么鬼", age: "23", sex: "famle", favorited: "fav"),
            UserModel(id: "3", name: "Lily", avatar: "user3", profession: "歌手管", solar: "白羊座", mood: "一首简单的歌", age: "23", sex: "famle", favorited: "fav"),
        ]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("userCell") as! UITableViewCell
        var user = users[indexPath.row] as UserModel
        var userAvatar = cell.viewWithTag(1001) as! UIImageView
        //将头像转化为圆形
        userAvatar.layer.cornerRadius = userAvatar.frame.size.width / 2
        userAvatar.clipsToBounds = true
        userAvatar.image = UIImage(named: user.avatar)

        var userName = cell.viewWithTag(1002) as! UILabel
        userName.text = user.name
        var userProfession = cell.viewWithTag(1003) as! UILabel
        userProfession.text = user.profession
        var userAgeSolar = cell.viewWithTag(1004) as! UILabel
        userAgeSolar.text = user.age
        var userSex = cell.viewWithTag(1005) as! UIButton
        userSex.setImage(UIImage(named: user.sex), forState:.Normal)
        var userFav = cell.viewWithTag(1006) as! UIButton
        userFav.setImage(UIImage(named: user.favorited), forState:.Normal)
        var userMood = cell.viewWithTag(1007) as! UILabel
        userMood.text = user.mood
        return cell
    }
}