//
//  AboutMeContainerViewController.swift
//  Muhammad Athar
//
//  Created by Muhammad Athar on 26/04/2015.
//  Copyright (c) 2015 Muhammad Athar. All rights reserved.
//

import UIKit
import MapKit

class AboutMeContainerViewController: UIViewController {

    @IBOutlet weak var introtext: UITextView!
    @IBOutlet weak var mypictext: UITextView!
    @IBOutlet weak var mypic: UIImageView!
    @IBOutlet weak var uktext: UITextView!
    @IBOutlet weak var ukflag: UIImageView!
    @IBOutlet weak var clock: UIImageView!
    @IBOutlet weak var pkFlag: UIImageView!
    @IBOutlet weak var grewUpKhewraText: UITextView!
    @IBOutlet weak var khewraMap: MKMapView!
    
    @IBOutlet weak var schoollogo: UIImageView!
    @IBOutlet weak var schooltext: UITextView!
    
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
        
        clock.frame = CGRectMake(69, 20, 150, 150)
        scrollView.addSubview(clock)
        
        introtext.frame = CGRectMake(16, 175, 256, 255)
        scrollView.addSubview(introtext)
        
        pkFlag.frame = CGRectMake(self.view.frame.width + 69, 20, 150, 150)
        scrollView.addSubview(pkFlag)
        
        grewUpKhewraText.frame = CGRectMake(self.view.frame.width + 16, 175, 256, 78)
        scrollView.addSubview(grewUpKhewraText)
        
        khewraMap.frame = CGRectMake(self.view.frame.width + 16, 253, 256, 150)
        scrollView.addSubview(khewraMap)
        
        schoollogo.frame = CGRectMake(self.view.frame.width * 3 + 69, 20, 150, 150)
        scrollView.addSubview(schoollogo)
        
        schooltext.frame = CGRectMake(self.view.frame.width * 3 + 16, 175, 256, 255)
        scrollView.addSubview(schooltext)
        
        ukflag.frame = CGRectMake(self.view.frame.width * 2 + 69, 20, 150, 150)
        scrollView.addSubview(ukflag)
        
        uktext.frame = CGRectMake(self.view.frame.width * 2 + 16, 176, 256, 255)
        scrollView.addSubview(uktext)
        
        mypic.frame = CGRectMake(self.view.frame.width * 4 + 69, 20, 150, 150)
        scrollView.addSubview(mypic)
        
        mypictext.frame = CGRectMake(self.view.frame.width * 4 + 16, 176, 256, 255)
        scrollView.addSubview(mypictext)
        
        let location = CLLocationCoordinate2D(latitude: 31.5497, longitude: 74.3436)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        khewraMap.setRegion(region, animated: true)
        
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
