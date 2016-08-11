//
//  AppController.swift
//  OpalOval
//
//  Created by Christopher Webb-Orenstein on 8/11/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit
import MapKit
import SwiftSpinner
import SnapKit

class AppController: UITabBarController, Tabable, Navigable {
    
    var currentViewController: UIViewController!
    var containerView: UIView!
    
    //var currentView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        self.currentViewController = ResultViewController()
        addCurrentViewController(self.currentViewController)
        //self.view.addSubview(self.setupNavBar())
       
        //self.currentView.addSubview(self.setupNavBar())
        //self.currentView.backgroundColor=UIColor.lightGrayColor()
        //self.view.addSubview(currentView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        SwiftSpinner.showWithDuration(1.3, title: "TEAM DRAGON")
        SwiftSpinner.setTitleFont(UIFont(name: "Futura", size: 33.0))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension AppController {
    private func addCurrentViewController(controller: UIViewController) {
        self.addChildViewController(controller)
        self.containerView.addSubview(controller.view)
        controller.view.frame = self.containerView.bounds
        controller.view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        controller.didMoveToParentViewController(self)
        
    }

}

