//
//  AppDelegate.swift
//  traveller
//
//  Created by xiaocui on 15/10/20.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //判断是否第一次启动
//        if(!NSUserDefaults.standardUserDefaults().boolForKey("firstLaunch")) {
//            self.window?.rootViewController = ViewController()
//            self.window?.makeKeyAndVisible()
//            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "firstLaunch")
//        }else{
//            let sb = UIStoryboard(name: "Main", bundle: nil)
//            let mainView = sb.instantiateViewControllerWithIdentifier("main") as! UIViewController
//            self.window?.makeKeyAndVisible()
//            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "firstLaunch")
//        }
        //修改tab bar的样式
        UITabBar.appearance().barTintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        UITabBar.appearance().barTintColor = UIColor.clearColor()
        UITabBar.appearance().tintColor = UIColor(red: 79/255, green: 195/255, blue: 247/255, alpha: 1)
        
        //导航栏背景颜色
        UINavigationBar.appearance().barTintColor = UIColor(red: 3/255, green: 169/255, blue: 244/255, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

