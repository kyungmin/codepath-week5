//
//  HamburgerViewController.swift
//  week5
//
//  Created by Kyungmin Kim on 3/2/15.
//  Copyright (c) 2015 Kyungmin Kim. All rights reserved.
//

import UIKit

class HamburgerViewController: UIViewController {
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var feedView: UIView!
    var feedViewController: FeedViewController!
    var menuViewController: MenuViewController!
    var originalFeedCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        feedViewController = storyboard.instantiateViewControllerWithIdentifier("feedStory") as FeedViewController
        menuViewController = storyboard.instantiateViewControllerWithIdentifier("menuStory") as MenuViewController
        
        feedView.addSubview(feedViewController.view)
        menuView.addSubview(menuViewController.view)
        
    }

    @IBAction func onPan(sender: UIPanGestureRecognizer) {
        var translation = sender.translationInView(view)
        
        if (sender.state == UIGestureRecognizerState.Began) {
            originalFeedCenter = feedView.center
            
        } else if (sender.state == UIGestureRecognizerState.Changed) {
            feedView.center.x = originalFeedCenter.x + translation.x
            
        } else if (sender.state == UIGestureRecognizerState.Ended) {
            // pan ended
        }
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
