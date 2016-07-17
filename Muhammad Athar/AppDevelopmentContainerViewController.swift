//
//  AppDevelopmentContainerViewController.swift
//  Muhammad Athar
//
//  Created by Muhammad Athar on 26/04/2015.
//  Copyright (c) 2015 Muhammad Athar. All rights reserved.
//

import UIKit

class AppDevelopmentContainerViewController: UIViewController {

    @IBOutlet weak var introtext: UITextView!
    @IBOutlet weak var mspaint: UIImageView!
    @IBOutlet weak var logopic: UIImageView!
    @IBOutlet weak var logotext: UITextView!
    @IBOutlet weak var visualstudio: UIImageView!
    @IBOutlet weak var vstext: UITextView!
    @IBOutlet weak var appleLogo: UIImageView!
    @IBOutlet weak var appletext: UITextView!
    @IBOutlet weak var sociology: UIImageView!
    @IBOutlet weak var sociologytext: UITextView!
    
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
        
        mspaint.frame = CGRectMake(69, 20, 150, 150)
        scrollView.addSubview(mspaint)
        
        introtext.frame = CGRectMake(16, 178, 256, 225)
        scrollView.addSubview(introtext)
        
        logopic.frame = CGRectMake(self.view.frame.width + 69, 20, 150, 150)
        scrollView.addSubview(logopic)
        
        logotext.frame = CGRectMake(self.view.frame.width + 16, 178, 256, 225)
        scrollView.addSubview(logotext)
        
        visualstudio.frame = CGRectMake(self.view.frame.width * 2 + 69, 20, 150, 150)
        scrollView.addSubview(visualstudio)
        
        vstext.frame = CGRectMake(self.view.frame.width * 2 + 16, 178, 256, 225)
        scrollView.addSubview(vstext)
        
        appleLogo.frame = CGRectMake(self.view.frame.width * 3 + 69, 20, 150, 150)
        scrollView.addSubview(appleLogo)
        
        appletext.frame = CGRectMake(self.view.frame.width * 3 + 16, 178, 253, 318)
        scrollView.addSubview(appletext)
        
        sociology.frame = CGRectMake(self.view.frame.width * 4 + 69, 20, 150, 150)
        scrollView.addSubview(sociology)
        
        sociologytext.frame = CGRectMake(self.view.frame.width * 4 + 16, 150, 253, 318)
        scrollView.addSubview(sociologytext)

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
