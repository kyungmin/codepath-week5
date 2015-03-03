//
//  TabBarViewController.swift
//  week5
//
//  Created by Kyungmin Kim on 3/2/15.
//  Copyright (c) 2015 Kyungmin Kim. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    var blueViewController :BlueViewController!
    var purpleViewController :PurpleViewController!
    var currentViewController :UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        blueViewController = storyboard.instantiateViewControllerWithIdentifier("blueViewStory") as BlueViewController
        purpleViewController = storyboard.instantiateViewControllerWithIdentifier("purpleViewStory") as PurpleViewController

        // set blue as default tab
        currentViewController = blueViewController
        didPressBlueTab(self)
    }

    @IBAction func didPressBlueTab(sender: AnyObject) {
        removeChildView(currentViewController)
        addChildViewController(blueViewController)
        
        var blueView = blueViewController.view
        blueView.frame = contentView.frame
        contentView.addSubview(blueViewController.view)
        
        blueViewController.didMoveToParentViewController(self)
        currentViewController = blueViewController
    }

    @IBAction func didPressPurpleTab(sender: AnyObject) {
        removeChildView(currentViewController)
        addChildViewController(purpleViewController)
        
        var purpleView = purpleViewController.view
        purpleView.frame = contentView.frame
        contentView.addSubview(purpleViewController.view)
        
        purpleViewController.didMoveToParentViewController(self)
        currentViewController = purpleViewController
    }
    
    func removeChildView(content: UIViewController) {
        content.willMoveToParentViewController(nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        //
    }
    
    override func viewWillAppear(animated: Bool) {
        //
    }
    
    override func viewWillDisappear(animated: Bool) {
        //
    }
    
    override func viewDidDisappear(animated: Bool) {
        //
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
