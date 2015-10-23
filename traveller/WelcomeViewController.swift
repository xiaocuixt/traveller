//
//  WelcomeViewController.swift
//  traveller
//
//  Created by xiaocui on 15/10/20.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    var scrollView = UIScrollView()
    //添加小圆点
    var pageControl = UIPageControl()
    //添加按钮
    var btn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.center = CGPointMake(self.view.frame.width/2, self.view.frame.height-30)
        pageControl.currentPageIndicatorTintColor = UIColor.redColor()
        pageControl.pageIndicatorTintColor = UIColor.whiteColor()
        pageControl.numberOfPages = 5
        pageControl.addTarget(self, action: "scrollViewDidEndDecelerating", forControlEvents: UIControlEvents.ValueChanged)
        
        scrollView.frame = self.view.bounds
        scrollView.contentSize = CGSizeMake(5*self.view.frame.width, 0)
        scrollView.pagingEnabled = true
        scrollView.bounces = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.delegate = self
        self.view.addSubview(scrollView)
        for(var i=0; i<5; i++)
        {
            let image = UIImage(named: "welcome\(i+1)")
            let imageView = UIImageView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
            imageView.image = image
            var frame = imageView.frame
            frame.origin.x = CGFloat(i)*frame.size.width
            imageView.frame = frame
            scrollView.addSubview(imageView)
            self.view.addSubview(pageControl)
        }
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        var index = Int(scrollView.contentOffset.x/self.view.frame.size.width)
        pageControl.currentPage = index
        if(index == 4) {
            self.btn.frame = CGRectMake(4*self.view.frame.width, self.view.frame.height, self.view.frame.width, 50)
            self.btn.setTitle("成为一名旅客", forState: UIControlState.Normal)
            self.btn.titleLabel?.font = UIFont.systemFontOfSize(20)
            self.btn.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
            self.btn.backgroundColor = UIColor.orangeColor()
            self.btn.alpha = 0
            self.btn.addTarget(self, action: "buttonClick:", forControlEvents: UIControlEvents.TouchUpInside)
            UIView.animateWithDuration(1.5, delay: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                self.btn.frame = CGRectMake(4*self.view.frame.width, self.view.frame.height-100, self.view.frame.width, 50)
                self.btn.alpha = 1
                self.scrollView.addSubview(self.btn)
                }, completion: nil)
        }
    }
    func buttonClick(button:UIButton)
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let list = sb.instantiateViewControllerWithIdentifier("list") as! UIViewController
        self.presentViewController(list, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
