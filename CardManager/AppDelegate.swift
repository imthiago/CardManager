//
//  AppDelegate.swift
//  CardManager
//
//  Created by Thiago Oliveira on 17/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let launchViewController = LaunchScreenViewController()
        window?.rootViewController = launchViewController
        window?.makeKeyAndVisible()
        return true
    }
}
