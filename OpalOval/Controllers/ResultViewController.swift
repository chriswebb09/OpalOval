//
//  ResultViewController.swift
//  OpalOval
//
//  Created by Christopher Webb-Orenstein on 8/11/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, Navigable, Tabable {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.lightGrayColor()
        self.setupTabBar()
        self.setupNavBar()
    }
    
}
