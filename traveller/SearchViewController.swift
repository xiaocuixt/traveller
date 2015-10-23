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
    @IBOutlet weak var searchButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        destinationTextField.layer.cornerRadius = 5
        destinationTextField.layer.borderWidth = 1
        destinationTextField.layer.borderColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1).CGColor
        
        planeTextField.layer.cornerRadius = 5
        planeTextField.layer.borderWidth = 1
        planeTextField.layer.borderColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1).CGColor
        
        railwayTextField.layer.cornerRadius = 5
        railwayTextField.layer.borderWidth = 1
        railwayTextField.layer.borderColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1).CGColor
        
        searchButton.backgroundColor = UIColor(red: 79/255, green: 195/255, blue: 247/255, alpha: 1)
        searchButton.layer.cornerRadius = 20
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
