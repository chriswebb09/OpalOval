//
//  DetailViewController.swift
//  OpalOval
//
//  Created by Christopher Webb-Orenstein on 8/11/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

@objc (DetailViewController)

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        self.setUpView()
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
