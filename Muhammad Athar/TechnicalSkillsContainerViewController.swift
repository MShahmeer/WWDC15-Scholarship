//
//  TechnicalSkillsContainerViewController.swift
//  Muhammad Athar
//
//  Created by Muhammad Athar on 26/04/2015.
//  Copyright (c) 2015 Muhammad Athar. All rights reserved.
//

import UIKit

class TechnicalSkillsContainerViewController: UIViewController {
    
    @IBOutlet weak var topText: UITextView!
    @IBOutlet weak var PSLogo: UIImageView!
    @IBOutlet weak var AILogo: UIImageView!
    @IBOutlet weak var PRLogo: UIImageView!
    @IBOutlet weak var AELogo: UIImageView!
    @IBOutlet weak var CDLogo: UIImageView!
    
    @IBOutlet weak var PSTitle: UILabel!
    @IBOutlet weak var AITitle: UILabel!
    @IBOutlet weak var PRTitle: UILabel!
    @IBOutlet weak var AETitle: UILabel!
    @IBOutlet weak var CDTitle: UILabel!
    
    @IBOutlet weak var PSText: UITextView!
    @IBOutlet weak var AIText: UITextView!
    @IBOutlet weak var PRText: UITextView!
    @IBOutlet weak var AEText: UITextView!
    @IBOutlet weak var CDText: UITextView!
    
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
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = true
        
        PSLogo.frame = CGRectMake(94, 106, 100 , 100)
        scrollView.addSubview(PSLogo)
        
        AILogo.frame = CGRectMake(self.view.frame.width + 94, 106, 100, 100)
        scrollView.addSubview(AILogo)
        
        PRLogo.frame = CGRectMake((self.view.frame.width * 2) + 94, 106, 100, 100)
        scrollView.addSubview(PRLogo)
        
        AELogo.frame = CGRectMake((self.view.frame.width * 3) + 94, 106, 100, 100)
        scrollView.addSubview(AELogo)
        
        CDLogo.frame = CGRectMake((self.view.frame.width * 4) + 94, 106, 100, 100)
        scrollView.addSubview(CDLogo)
        
        topText.frame = CGRectMake(16, 20, 256, 78)
        self.view.insertSubview(topText, aboveSubview: scrollView)
        // Do any additional setup after loading the view.
        
        PSTitle.frame = CGRectMake(16, 214, 256 , 35)
        scrollView.addSubview(PSTitle)
        
        AITitle.frame = CGRectMake(self.view.frame.width + 16, 214, 256, 35)
        scrollView.addSubview(AITitle)
        
        PRTitle.frame = CGRectMake((self.view.frame.width * 2) + 16, 214, 256, 35)
        scrollView.addSubview(PRTitle)
        
        AETitle.frame = CGRectMake((self.view.frame.width * 3) + 16, 214, 256, 35)
        scrollView.addSubview(AETitle)
        
        CDTitle.frame = CGRectMake((self.view.frame.width * 4) + 16, 214, 256, 35)
        scrollView.addSubview(CDTitle)
        
        PSText.frame = CGRectMake(16, 257, 256 , 167)
        scrollView.addSubview(PSText)
        
        AIText.frame = CGRectMake(self.view.frame.width + 16, 257, 256, 167)
        scrollView.addSubview(AIText)
        
        PRText.frame = CGRectMake((self.view.frame.width * 2) + 16, 257, 256, 167)
        scrollView.addSubview(PRText)
        
        AEText.frame = CGRectMake((self.view.frame.width * 3) + 16, 257, 256, 167)
        scrollView.addSubview(AEText)
        
        CDText.frame = CGRectMake((self.view.frame.width * 4) + 16, 257, 256, 167)
        scrollView.addSubview(CDText)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
