//
//  LoginViewController.swift
//  traveller
//
//  Created by xiaocui on 15/10/20.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置登录按钮
        //loginButton.backgroundColor = UIColor(red: 129/255, green: 213/255, blue: 250/255, alpha: 1)
        loginButton.setBackgroundImage(UIImage(named: "login-button.png"), forState:.Normal)
        loginButton.layer.cornerRadius = 16
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //点击return键隐藏键盘
    @IBAction func AccountTextField(sender: UITextField) {
        sender.resignFirstResponder()
    }
    @IBAction func passwordTextField(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    //创建两个框的outlet
    @IBOutlet weak var accountField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func controlTouchDown(sender: UIControl) {
        accountField.resignFirstResponder()
        passwordField.resignFirstResponder()
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
