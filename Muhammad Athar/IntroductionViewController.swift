//
//  IntroductionViewController.swift
//  Muhammad Athar
//
//  Created by Muhammad Athar on 24/04/2015.
//  Copyright (c) 2015 Muhammad Athar. All rights reserved.
//

import UIKit
import MessageUI

let endOffset: CGFloat = 40.0 // At this offset the Header stops its transformations

class IntroductionViewController: UIViewController, UIScrollViewDelegate, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var swipeLabel: UILabel!
    
    @IBOutlet weak var closebutton: UIButton!
    
    @IBOutlet weak var AboutMeContainerView: UIView!
    
    @IBAction func aboutMeButtonTapped(sender: AnyObject) {
        UIView.animateWithDuration(0.6, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1.5, options: nil, animations: {
            self.AboutMeContainerView.hidden = false
            self.AboutMeContainerView.frame = CGRectMake((self.view.frame.width - 280) / 2, 130, 280, 418)
        }, completion: nil)
        self.closebutton.hidden = false
        self.swipeLabel.hidden = false
    }
    
    @IBOutlet weak var InterestsContainerView: UIView!
    
    @IBAction func interestsButtonTapped(sender: AnyObject) {
        UIView.animateWithDuration(0.6, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1.5, options: nil, animations: {
            self.InterestsContainerView.hidden = false
            self.InterestsContainerView.frame = CGRectMake((self.view.frame.width - 280) / 2, 130, 280, 418)
            }, completion: nil)
        self.closebutton.hidden = false
        self.swipeLabel.hidden = false
        
        println("\(self.InterestsContainerView.frame)")
    }
    
    @IBOutlet weak var AppDevelopmentContainerView: UIView!
    
    @IBAction func AppDevelopmentButtonTapped(sender: AnyObject) {
        UIView.animateWithDuration(0.6, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1.5, options: nil, animations: {
            self.AppDevelopmentContainerView.hidden = false
            self.AppDevelopmentContainerView.frame = CGRectMake((self.view.frame.width - 280) / 2, 130, 280, 418)
            }, completion: nil)
        self.closebutton.hidden = false
        self.swipeLabel.hidden = false
    }
    
    @IBOutlet weak var TechnicalSkillsContainerView: UIView!
    
    @IBAction func TechnicalSkillsButtonTapped(sender: AnyObject) {
        UIView.animateWithDuration(0.6, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1.5, options: nil, animations: {
            self.TechnicalSkillsContainerView.hidden = false
            self.TechnicalSkillsContainerView.frame = CGRectMake((self.view.frame.width - 280) / 2, 130, 280, 418)
            }, completion: nil)
        self.closebutton.hidden = false
        self.swipeLabel.hidden = false
        
        println("\(self.TechnicalSkillsContainerView.frame)")
    }
    
    @IBOutlet weak var whyWWDCContainerView: UIView!
    
    @IBAction func whyWWDCButtonTapped(sender: AnyObject) {
        UIView.animateWithDuration(0.6, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1.5, options: nil, animations: {
            self.whyWWDCContainerView.hidden = false
            self.whyWWDCContainerView.frame = CGRectMake((self.view.frame.width - 280) / 2, 130, 280, 418)
            }, completion: nil)
        self.closebutton.hidden = false
        self.swipeLabel.hidden = false
    }
    
    @IBAction func closeButtonTapped(sender: AnyObject) {
        UIView.animateWithDuration(0.6, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1.5, options: nil, animations: {
            self.closebutton.hidden = false
            self.AboutMeContainerView.frame = CGRectMake(20, 130, 0, self.view.frame.height-150)
            self.TechnicalSkillsContainerView.frame = CGRectMake(20, 130, 0, self.view.frame.height-150)
            self.whyWWDCContainerView.frame = CGRectMake(20, 130, 0, self.view.frame.height-150)
            self.AppDevelopmentContainerView.frame = CGRectMake(20, 130, 0, self.view.frame.height-150)
            self.InterestsContainerView.frame = CGRectMake(20, 130, 0, self.view.frame.height-150)
            }, completion: nil)
        self.closebutton.hidden = true
        self.swipeLabel.hidden = true
    }
    
    //email delegate
    @IBAction func ContactMeButtonTapped(sender: AnyObject) {
        if MFMailComposeViewController.canSendMail() {
            var emailTitle = "We want to get in touch with you!"
            var messageBody = "Hey Shahmeer,\n"
            var toRecipents = ["shahmeer.athar@gmail.com"]
            var mailComposer: MFMailComposeViewController = MFMailComposeViewController()
            mailComposer.mailComposeDelegate = self
            mailComposer.setSubject(emailTitle)
            mailComposer.setMessageBody(messageBody, isHTML: false)
            mailComposer.setToRecipients(toRecipents)
            
            self.presentViewController(mailComposer, animated: true, completion: nil)
        }
        else {
            var alert = UIAlertController(title: "No Email Account Added", message: "Please add an email account by going into the mail app.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            alert.addAction(UIAlertAction(title: "Add Account", style: UIAlertActionStyle.Default, handler: { action in
                var mailURL = NSURL(string: "mailto:shahmeer.athar@gmail.com")
                UIApplication.sharedApplication().openURL(mailURL!)
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    func mailComposeController(controller:MFMailComposeViewController, didFinishWithResult result:MFMailComposeResult, error:NSError) {
        switch result.value {
        case MFMailComposeResultCancelled.value:
            println("Mail cancelled")
        case MFMailComposeResultSaved.value:
            println("Mail saved")
        case MFMailComposeResultSent.value:
            println("Mail sent")
        case MFMailComposeResultFailed.value:
            println("Mail sent failure: %@", [error.localizedDescription])
        default:
            break
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var slideUp: UIImageView!
    
    @IBOutlet weak var myNameLabel: UILabel!
    
    @IBOutlet weak var myPicture: UIImageView!
    
    @IBOutlet weak var heyLabel: UILabel!
    
    @IBOutlet weak var aboutMeButton: UIButton!
    
    @IBOutlet weak var interestsButton: UIButton!
    
    @IBOutlet weak var TechnicalSkillsButtons: UIButton!
    
    @IBOutlet weak var appDevelopmentButton: UIButton!
    
    @IBOutlet weak var whyWWDCButton: UIButton!
    
    @IBOutlet weak var contactMeButton: UIButton!
    
    @IBOutlet weak var buttonsImageView: UIImageView!
    
    @IBOutlet weak var bkImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println(self.view.frame.height)
        
        view.backgroundColor = UIColor.blackColor()
        
        //setting up frame for ScrollView
        var firstFrame : CGRect = self.view.frame;
        var bigFrame : CGRect = firstFrame
        bigFrame.size.height *= 2.0
        
        //setting up ScrollView
        var scrollView: UIScrollView = UIScrollView(frame: firstFrame)
        self.view.addSubview(scrollView)
        scrollView.pagingEnabled = true
        scrollView.contentSize = bigFrame.size
        scrollView.delegate = self
        scrollView.delaysContentTouches = false
        scrollView.showsVerticalScrollIndicator = false
        
        //setting up background image
        self.bkImageView.frame = CGRectMake(self.view.frame.width - 500, 0, self.view.frame.width, self.view.frame.height)
        bkImageView.contentMode = UIViewContentMode.ScaleAspectFill
        view.insertSubview(bkImageView, belowSubview: scrollView)
        
        //setting up heyLabel
        if self.view.frame.height <= 568 {
            self.heyLabel.frame = CGRectMake(60, -224, 200, 120)
        }
        else if self.view.frame.height == 667 {
            self.heyLabel.frame = CGRectMake(87, -274, 200, 120)
        }
        else {
            self.heyLabel.frame = CGRectMake(107, -308, 200, 120)
        }
        scrollView.addSubview(heyLabel)
        
        //setting up myNameLabel
        self.myNameLabel.alpha = 0.0
        if self.view.frame.height == 667 {
            self.myNameLabel.font = UIFont(name: "AvenirNext-UltraLight", size: 25)
            self.myNameLabel.frame = CGRectMake(2, 319, 373, 21)
        }
        else if self.view.frame.height == 736 {
            self.myNameLabel.font = UIFont(name: "AvenirNext-UltraLight", size: 27)
            self.myNameLabel.frame = CGRectMake(2, 357, 412, 21)
        }
        scrollView.addSubview(myNameLabel)
        
        //setting up myPicture
        if self.view.frame.height == 568 {
            self.myPicture.frame = CGRectMake(65, 190, 190, 190)
        }
        else if self.view.frame.height == 667 {
            self.myPicture.frame = CGRectMake(77, 220, 220, 220)
        }
        else {
            self.myPicture.frame = CGRectMake(87, 240, 240, 240)
        }
        self.myPicture.alpha = 0.0
        scrollView.addSubview(myPicture)
        
        //setting up slideUp
        self.slideUp.frame = CGRectMake((self.view.frame.width / 2), self.view.frame.height - 50, 0, 30)
        scrollView.addSubview(slideUp)
        
        //setting up buttonsImageView
        if self.view.frame.height <= 568 {
            self.buttonsImageView.frame = CGRectMake(self.view.frame.width - 300, self.view.frame.height, self.view.frame.width, self.view.frame.height)
        }
        else {
            self.buttonsImageView.frame = CGRectMake(self.view.frame.width - 400, self.view.frame.height, self.view.frame.width, self.view.frame.height)
        }
        
        bkImageView.contentMode = UIViewContentMode.ScaleAspectFill
        scrollView.addSubview(buttonsImageView)
        
        //adding buttons
        if self.view.frame.height == 667 {
            self.aboutMeButton.frame = CGRectMake(31, 152+667, 120, 120)
        }
        else if self.view.frame.height == 736 {
            self.aboutMeButton.frame = CGRectMake(48, 891, 125, 125)
        }
        else {
            self.aboutMeButton.frame = CGRectMake(28, 130+568, 100, 100)
        }
        scrollView.addSubview(aboutMeButton)
        
        if self.view.frame.height == 667 {
            self.interestsButton.frame = CGRectMake(31, 326+667, 120, 120)
        }
        else if self.view.frame.height == 736 {
            self.interestsButton.frame = CGRectMake(48, 1091, 125, 125)
        }
        else {
            self.interestsButton.frame = CGRectMake(28, 280+568, 100, 100)
        }
        scrollView.addSubview(interestsButton)
        
        if self.view.frame.height == 667 {
            self.TechnicalSkillsButtons.frame = CGRectMake(31, 500+667, 120, 120)
        }
        else if self.view.frame.height == 736 {
            self.TechnicalSkillsButtons.frame = CGRectMake(48, 1291, 125, 125)
        }
        else {
            self.TechnicalSkillsButtons.frame = CGRectMake(28, 430+568, 100, 100)
        }
        scrollView.addSubview(TechnicalSkillsButtons)
        
        if self.view.frame.height == 667 {
            self.contactMeButton.frame = CGRectMake(219, 500+667, 120, 120)
        }
        else if self.view.frame.height == 736 {
            self.contactMeButton.frame = CGRectMake(236, 1291, 125, 125)
        }
        else {
            self.contactMeButton.frame = CGRectMake(192, 430+568, 100, 100)
        }
        scrollView.addSubview(contactMeButton)
        
        if self.view.frame.height == 667 {
            self.whyWWDCButton.frame = CGRectMake(219, 326+667, 120, 120)
        }
        else if self.view.frame.height == 736 {
            self.whyWWDCButton.frame = CGRectMake(236, 1091, 125, 125)
        }
        else {
            self.whyWWDCButton.frame = CGRectMake(192, 280+568, 100, 100)
        }
        scrollView.addSubview(whyWWDCButton)
        
        if self.view.frame.height == 667 {
            self.appDevelopmentButton.frame = CGRectMake(219, 152+667, 120, 120)
        }
        else if self.view.frame.height == 736 {
            self.appDevelopmentButton.frame = CGRectMake(236, 891, 125, 125)
        }
        else {
            self.appDevelopmentButton.frame = CGRectMake(192, 130+568, 100, 100)
        }
        scrollView.addSubview(appDevelopmentButton)
        
        //setting up ContainerViews
        self.AboutMeContainerView.hidden = true
        self.AboutMeContainerView.frame = CGRectMake(48, 891, aboutMeButton.frame.width, aboutMeButton.frame.height)
        self.AboutMeContainerView.layer.cornerRadius = 20.0
        self.AboutMeContainerView.clipsToBounds = true
        AboutMeContainerView.backgroundColor = UIColor.whiteColor()
        view.insertSubview(AboutMeContainerView, aboveSubview: scrollView)
        
        self.InterestsContainerView.hidden = true
        self.InterestsContainerView.frame = CGRectMake(48, 891, interestsButton.frame.width, interestsButton.frame.height)
        self.InterestsContainerView.layer.cornerRadius = 20.0
        self.InterestsContainerView.clipsToBounds = true
        self.InterestsContainerView.backgroundColor = UIColor.whiteColor()
        view.insertSubview(InterestsContainerView, aboveSubview: scrollView)
        
        self.TechnicalSkillsContainerView.hidden = true
        self.TechnicalSkillsContainerView.frame = CGRectMake(48, 891, TechnicalSkillsButtons.frame.width, TechnicalSkillsButtons.frame.height)
        self.TechnicalSkillsContainerView.layer.cornerRadius = 20.0
        self.TechnicalSkillsContainerView.clipsToBounds = true
        self.TechnicalSkillsContainerView.backgroundColor = UIColor.whiteColor()
        view.insertSubview(TechnicalSkillsContainerView, aboveSubview: scrollView)
        
        self.AppDevelopmentContainerView.hidden = true
        self.AppDevelopmentContainerView.frame = CGRectMake(48, 891, appDevelopmentButton.frame.width, appDevelopmentButton.frame.height)
        self.AppDevelopmentContainerView.layer.cornerRadius = 20.0
        self.AppDevelopmentContainerView.clipsToBounds = true
        self.AppDevelopmentContainerView.backgroundColor = UIColor.whiteColor()
        view.insertSubview(AppDevelopmentContainerView, aboveSubview: scrollView)
        
        self.whyWWDCContainerView.hidden = true
        self.whyWWDCContainerView.frame = CGRectMake(48, 891, whyWWDCButton.frame.width, whyWWDCButton.frame.height)
        self.whyWWDCContainerView.layer.cornerRadius = 20.0
        self.whyWWDCContainerView.clipsToBounds = true
        self.whyWWDCContainerView.backgroundColor = UIColor.whiteColor()
        view.insertSubview(whyWWDCContainerView, aboveSubview: scrollView)
        
        //Parallax Effect :)
        //Set vertical effect
        let verticalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: .TiltAlongVerticalAxis)
        verticalMotionEffect.minimumRelativeValue = -20
        verticalMotionEffect.maximumRelativeValue = 20
        
        // Set horizontal effect
        let horizontalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: .TiltAlongHorizontalAxis)
        horizontalMotionEffect.minimumRelativeValue = -20
        horizontalMotionEffect.maximumRelativeValue = 20
        
        // Create group to combine both
        let parallaxEffect = UIMotionEffectGroup()
        parallaxEffect.motionEffects = [horizontalMotionEffect, verticalMotionEffect]
        
        // Add both effects to your view
        bkImageView.addMotionEffect(parallaxEffect)
        buttonsImageView.addMotionEffect(parallaxEffect)
        
        if self.view.frame.height == 568 {
            self.closebutton.frame = CGRectMake(125,self.view.frame.height + 49, 70, 70)
        }
        else if self.view.frame.height == 667 {
            self.closebutton.frame = CGRectMake(152,self.view.frame.height + 49, 70, 70)
        }
        else {
            self.closebutton.frame = CGRectMake(172,self.view.frame.height + 49, 70, 70)
        }
        scrollView.addSubview(closebutton)
        closebutton.hidden = true
        
        self.swipeLabel.frame = CGRectMake(0, self.view.frame.height + 1, self.view.frame.width, 20)
        self.swipeLabel.hidden = true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.userInteractionEnabled = false
        UIView.animateWithDuration(0.7, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.6, options: nil, animations: {
                if self.view.frame.height <= 568 {
                    self.heyLabel.frame = CGRectMake(60, 224, 200, 120)
                }
                else if self.view.frame.height == 667 {
                    self.heyLabel.frame = CGRectMake(87, 274, 200, 120)
                }
                else {
                    self.heyLabel.frame = CGRectMake(107, 308, 200, 120)
                }
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 1.5, options: nil, animations: {
            self.heyLabel.alpha = 0.0
        }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 2.0, options: nil, animations: {
            self.myNameLabel.alpha = 1.0
        }, completion: nil)
        
        UIView.animateWithDuration(0.65, delay: 2.7, options: nil, animations: {
                self.myNameLabel.frame = CGRectMake(0, self.view.center.y + 120, self.view.frame.width, 27)
        }, completion: nil)
        
        UIView.animateWithDuration(0.65, delay: 2.7, options: nil, animations: {
            self.myPicture.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 3.0, options: nil, animations: {
            self.slideUp.frame = CGRectMake((self.view.frame.width / 2) - 45, self.view.frame.height - 60, 90, 30)
            }, completion: {(Bool) in
                self.view.userInteractionEnabled = true})
        
        UIView.animateWithDuration(1, delay: 4.0, options: UIViewAnimationOptions.Repeat | UIViewAnimationOptions.Autoreverse, animations: {
            self.slideUp.frame = CGRectMake((self.view.frame.width / 2) - 45, self.view.frame.height - 70, 90, 30)
            }, completion: nil)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        var offset = scrollView.contentOffset.y
        var bkImageViewTransform = CATransform3DIdentity
        
        if offset <= 0 {
            var scaleFactor = -(offset) / bkImageView.bounds.height
            var Sizevariation = ((bkImageView.bounds.height * (1.0 + scaleFactor)) - bkImageView.bounds.height)/2.0
            bkImageViewTransform = CATransform3DTranslate(bkImageViewTransform, 0, Sizevariation, 0)
            bkImageViewTransform = CATransform3DScale(bkImageViewTransform, 1.0 + scaleFactor, 1.0 + scaleFactor, 0)
            
            bkImageView.layer.transform = bkImageViewTransform
        }
        
        if offset < 50 && offset > 0 {
            UIView.animateWithDuration(0.3, animations: {
                self.bkImageView.transform = CGAffineTransformMakeScale(1, 1)
            })
        }
        else if offset >= 50 {
            UIView.animateWithDuration(0.5, animations: {
                self.bkImageView.transform = CGAffineTransformMakeScale(2, 2)
            })
        }
        
        if offset <= self.view.frame.height {
            UIView.animateWithDuration(0.25, animations: {
                self.buttonsImageView.transform = CGAffineTransformMakeScale(1, 1)
            })
        }
        else if offset > self.view.frame.height {
            UIView.animateWithDuration(0.25, animations: {
                self.buttonsImageView.transform = CGAffineTransformMakeScale(1.5, 1.5)
            })
        }
        
        println("\(offset)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}