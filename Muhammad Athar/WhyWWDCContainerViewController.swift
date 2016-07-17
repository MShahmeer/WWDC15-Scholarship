//
//  WhyWWDCContainerViewController.swift
//  Muhammad Athar
//
//  Created by Muhammad Athar on 26/04/2015.
//  Copyright (c) 2015 Muhammad Athar. All rights reserved.
//

import UIKit

class WhyWWDCContainerViewController: UIViewController {
    
    @IBOutlet weak var wwdclogo: UIImageView!
    @IBOutlet weak var text1: UITextView!
    @IBOutlet weak var text2: UITextView!
    @IBOutlet weak var text3: UITextView!
    @IBOutlet weak var text4: UITextView!
    @IBOutlet weak var text5: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var firstFrame : CGRect = self.view.frame;
        var bigFrame : CGRect = firstFrame
        bigFrame.size.width *= 5.0
        var scrollView: UIScrollView = UIScrollView(frame: firstFrame)
        self.view.addSubview(scrollView)
        scrollView.scrollEnabled = true
        scrollView.pagingEnabled = true
        scrollView.contentSize = bigFrame.size
        scrollView.delaysContentTouches = false
        
        wwdclogo.frame = CGRectMake(0, 0, 288, 195)
        view.insertSubview(wwdclogo, aboveSubview: scrollView)
        
        text1.frame = CGRectMake(16, 203, 256, 247)
        scrollView.addSubview(text1)
        text2.frame = CGRectMake(scrollView.frame.width + 16, 203, 256, 247)
        scrollView.addSubview(text2)
        text3.frame = CGRectMake((scrollView.frame.width * 2) + 16, 203, 256, 247)
        scrollView.addSubview(text3)
        text4.frame = CGRectMake((scrollView.frame.width * 3) + 16, 203, 256, 247)
        scrollView.addSubview(text4)
        text5.frame = CGRectMake((scrollView.frame.width * 4) + 16, 203, 256, 247)
        scrollView.addSubview(text5)

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
