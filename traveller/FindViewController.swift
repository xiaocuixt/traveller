//
//  FindViewController.swift
//  traveller
//
//  Created by xiaocui on 15/10/23.
//  Copyright (c) 2015年 xiaocui. All rights reserved.
//

import UIKit

class FindViewController: UIViewController, UIScrollViewDelegate {
  
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
            let image = UIImage(named: "scroll\(i+1)")
            let imageView = UIImageView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
            imageView.image = image
            var frame = imageView.frame
            frame.origin.x = CGFloat(i)*frame.size.width
            imageView.frame = frame
            scrollView.addSubview(imageView)
            self.view.addSubview(pageControl)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
