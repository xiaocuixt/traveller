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
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var setButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置找回密码输入框border
        findPassword.layer.cornerRadius = 5
        findPassword.layer.borderWidth = 1
        findPassword.layer.borderColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1).CGColor
        
        confirmPassword.layer.cornerRadius = 5
        confirmPassword.layer.borderWidth = 1
        confirmPassword.layer.borderColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1).CGColor
        
        setButton.backgroundColor = UIColor(red: 79/255, green: 195/255, blue: 247/255, alpha: 1)
        setButton.layer.cornerRadius = 24
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

