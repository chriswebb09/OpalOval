//
//  Tabable.swift
//  OpalOval
//
//  Created by Christopher Webb-Orenstein on 8/11/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

protocol Tabable: UITabBarControllerDelegate  {
    //implemented in protocol extension
}
extension Tabable {
    var resultViewController : ResultViewController { return ResultViewController() }
    var detailViewController : DetailViewController { return DetailViewController() }
    var economicDetailViewController : EconomicDetailViewController { return EconomicDetailViewController() }
    var educationDetailViewController : EducationDetailViewController { return EducationDetailViewController() }
    var demographicDetailViewController : DemographicDetailViewController { return DemographicDetailViewController() }
    
    var icon1 : UITabBarItem { return UITabBarItem(title: "Results", image: UIImage(named: "rating.png"), tag: 0) }
    var icon2 : UITabBarItem { return UITabBarItem(title: "Finance", image: UIImage(named: "emp.png"), tag: 1) }
    var icon3 : UITabBarItem { return UITabBarItem(title: "Education", image: UIImage(named: "edu.png"), tag: 2) }
    var icon4 : UITabBarItem { return UITabBarItem(title: "Details", image: UIImage(named: "trans.png"), tag: 3) }
    var icon5 : UITabBarItem { return UITabBarItem(title: "Demographics", image: UIImage(named: "resource.png"), tag: 4) }
    
    func setupTabBar() -> UITabBarController {
        let tabBarVC = UITabBarController()
        tabBarVC.delegate = self
        
        let resultVC = self.resultViewController
        let detailVC = self.detailViewController
        let economicVC = self.economicDetailViewController
        let educationVC = self.educationDetailViewController
        let demographicVC = self.demographicDetailViewController
        
        resultVC.tabBarItem = icon1
        detailVC.tabBarItem = icon2
        economicVC.tabBarItem = icon3
        educationVC.tabBarItem = icon4
        demographicVC.tabBarItem = icon5
        
        let controllers = [resultVC, detailVC, economicVC, educationVC, demographicVC]
        tabBarVC.viewControllers = controllers
        return tabBarVC
    }
    
}

