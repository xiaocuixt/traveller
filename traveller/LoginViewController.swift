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
        //loginButton.backgroundColor = UIColor(red: 129/225, green: 213/225, blue: 250/225, alpha: 1)
        loginButton.setBackgroundImage(UIImage(named: "login-button.png"), forState:.Normal)
        loginButton.layer.cornerRadius = 16
        // Do any additional setup after loading the view.
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
