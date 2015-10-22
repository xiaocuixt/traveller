//
//  SearchViewController.swift
//  traveller
//
//  Created by xiaocui on 15/10/21.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
 
    @IBOutlet weak var destinationTextField: UITextField!  //目的地搜索框
    @IBOutlet weak var planeTextField: UITextField!        //航班搜索框
    @IBOutlet weak var railwayTextField: UITextField!      //火车搜索框
    override func viewDidLoad() {
        super.viewDidLoad()

        destinationTextField.layer.cornerRadius = 5
        destinationTextField.layer.borderWidth = 1
        destinationTextField.layer.borderColor = UIColor(red: 204/225, green: 204/225, blue: 204/225, alpha: 1).CGColor
        
        planeTextField.layer.cornerRadius = 5
        planeTextField.layer.borderWidth = 1
        planeTextField.layer.borderColor = UIColor(red: 204/225, green: 204/225, blue: 204/225, alpha: 1).CGColor
        
        railwayTextField.layer.cornerRadius = 5
        railwayTextField.layer.borderWidth = 1
        railwayTextField.layer.borderColor = UIColor(red: 204/225, green: 204/225, blue: 204/225, alpha: 1).CGColor
        
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