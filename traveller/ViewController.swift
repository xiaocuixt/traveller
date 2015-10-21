//
//  ViewController.swift
//  traveller
//
//  Created by xiaocui on 15/10/20.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var findPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置找回密码输入框border
        findPassword.layer.borderColor = UIColor.blackColor().CGColor
        findPassword.layer.cornerRadius = 8
        findPassword.layer.backgroundColor = UIColor.redColor().CGColor
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

