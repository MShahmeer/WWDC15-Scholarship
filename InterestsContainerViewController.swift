//
//  InterestsContainerViewController.swift
//  Muhammad Athar
//
//  Created by Muhammad Athar on 26/04/2015.
//  Copyright (c) 2015 Muhammad Athar. All rights reserved.
//

import UIKit

class InterestsContainerViewController: UIViewController {
    
    @IBOutlet weak var camera: UIImageView!
    @IBOutlet weak var photographyText: UITextView!
    
    @IBOutlet weak var controller: UIImageView!
    @IBOutlet weak var gamingText: UITextView!
    
    @IBOutlet weak var bicycle: UIImageView!
    @IBOutlet weak var cyclingText: UITextView!
    
    @IBOutlet weak var swimming: UIImageView!
    @IBOutlet weak var swimmingText: UITextView!
    
    @IBAction func UnwindToView (segue: UIStoryboardSegue) {
        
    }
    
    @IBOutlet weak var flickrLink: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting up scrollView
        var firstFrame : CGRect = self.view.frame;
        var bigFrame : CGRect = firstFrame
        bigFrame.size.width *= 4.0
        var scrollView: UIScrollView = UIScrollView(frame: firstFrame)
        self.view.addSubview(scrollView)
        scrollView.scrollEnabled = true
        scrollView.pagingEnabled = true
        scrollView.contentSize = bigFrame.size
        scrollView.delaysContentTouches = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = true
        
        flickrLink.frame = CGRectMake(29, 380, 231, 30)
        scrollView.addSubview(flickrLink)
        
        //setting up icons
        camera.frame = CGRectMake(94, 20, 100, 100)
        controller.frame = CGRectMake(self.view.frame.width + 94, 20, 100, 100)
        bicycle.frame = CGRectMake(self.view.frame.width * 2 + 94, 20, 100, 100)
        swimming.frame = CGRectMake(self.view.frame.width * 3 + 94, 20, 100, 100)
        scrollView.addSubview(camera)
        scrollView.addSubview(controller)
        scrollView.addSubview(bicycle)
        scrollView.addSubview(swimming)
        
        photographyText.frame = CGRectMake(16, 128, 256, 189)
        scrollView.addSubview(photographyText)
        
        gamingText.frame = CGRectMake(self.view.frame.width + 16, 128, 256, 189)
        scrollView.addSubview(gamingText)
        
        cyclingText.frame = CGRectMake((self.view.frame.width * 2) + 16, 128, 256, 189)
        scrollView.addSubview(cyclingText)
        
        swimmingText.frame = CGRectMake((self.view.frame.width * 3) + 16, 128, 256, 189)
        scrollView.addSubview(swimmingText)

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
