//
//  ViewController.swift
//  YoutubeClone
//
//  Created by Caleb Ngai on 5/27/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating instances of the different vcs in the tab bar
        let vc1 = HomeViewController()
        let vc2 = ShortsViewController()
        let vc3 = SubscriptionsViewController()
        let vc4 = LibraryViewController()
        
//        vc1.title = "Home"
//        vc2.title = "Shorts"
//        vc3.title = "Subscriptions"
//        vc4.title = "Library"
        
        vc1.navigationItem.largeTitleDisplayMode = .never
        vc2.navigationItem.largeTitleDisplayMode = .never
        vc3.navigationItem.largeTitleDisplayMode = .never
        vc4.navigationItem.largeTitleDisplayMode = .never
        
        //Embedding Navigation Controllers in each of the VCs
        //Doing this here just makes it simpler versus going into each vc separately
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        let nav4 = UINavigationController(rootViewController: vc3)
        
        nav1.navigationBar.tintColor = .label
        nav2.navigationBar.tintColor = .label
        nav3.navigationBar.tintColor = .label
        nav4.navigationBar.tintColor = .label
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        nav4.navigationBar.prefersLargeTitles = true
        
        //Setting the tab bar item attributes
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Shorts", image: UIImage(systemName: "play.circle"), tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Subscriptions", image: UIImage(systemName: "play.rectangle.on.rectangle"), tag: 1)
        nav4.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "rectangle.stack.badge.play"), tag: 1)
        
        //Setting the 3 vcs into the tab bar
        setViewControllers([nav1, nav2, nav3, nav4], animated: false)
        
        UITabBar.appearance().barTintColor = .systemBackground
        UITabBar.appearance().tintColor = .white

    }


}

