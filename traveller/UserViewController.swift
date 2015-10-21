//
//  UserViewController.swift
//  traveller
//
//  Created by xiaocui on 15/10/21.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var copyButton: UIButton!
    @IBOutlet weak var complainButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        //将头像转化为圆形
        userAvatar.layer.cornerRadius = userAvatar.frame.size.width / 2
        userAvatar.clipsToBounds = true
        
        //设置复制按钮样式
        copyButton.backgroundColor = UIColor(red: 3/225, green: 169/225, blue: 244/225, alpha: 1)
        copyButton.layer.cornerRadius = 16
        
        //设置投诉按钮样式
        complainButton.backgroundColor = UIColor(red: 3/225, green: 169/225, blue: 244/225, alpha: 1)
        complainButton.layer.cornerRadius = 20
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
