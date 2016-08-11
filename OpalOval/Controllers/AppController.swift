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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        self.view.addSubview(self.setupNavBar())
        self.view.backgroundColor = UIColor.grayColor()
//        self.currentViewController = ResultViewController()
//        addCurrentViewController(self.currentViewController)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.setupTabBar()
    }
    
    override func viewDidAppear(animated: Bool) {
        SwiftSpinner.showWithDuration(1.3, title: "TEAM DRAGON")
        SwiftSpinner.setTitleFont(UIFont(name: "Futura", size: 33.0))
    }
    
    override func loadView() {
        super.loadView()
        self.setUpView()
    }
    
    
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title) ?")
        return true;
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpView() {
        let viewFrame = CGRect(x: 0, y: 0, width: 150, height: 300)
        self.view = UIView(frame: viewFrame)
        self.view.backgroundColor = UIColor.clearColor()
        
        let width: CGFloat = UIScreen.mainScreen().bounds.size.width
        let height: CGFloat = UIScreen.mainScreen().bounds.size.height
        let newView = UIView(frame: CGRect(x: (width * 0.10), y: (height * 0.25), width: (width * 0.75), height: (height / 2)))
        newView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(newView)
    }
}

//extension AppController {
//    private func addCurrentViewController(controller: UIViewController) {
//        self.addChildViewController(controller)
//        self.containerView.addSubview(controller.view)
//        controller.view.frame = self.containerView.bounds
//        controller.view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
//        controller.didMoveToParentViewController(self)
//    }
//}

