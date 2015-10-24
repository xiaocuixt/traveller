//
//  SignupViewController.swift
//  traveller
//
//  Created by xiaocui on 15/10/22.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var gaveupButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gaveupButton.backgroundColor = UIColor(red: 79/255, green: 195/255, blue: 247/255, alpha: 1)
        gaveupButton.layer.cornerRadius = 15
        
        nextButton.backgroundColor = UIColor(red: 79/255, green: 195/255, blue: 247/255, alpha: 1)
        nextButton.layer.cornerRadius = 15

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
