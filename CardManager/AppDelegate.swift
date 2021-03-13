//
//  AppDelegate.swift
//  CardManager
//
//  Created by Thiago Oliveira on 17/02/21.
//

import UIKit
import CardManagerPresentation

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var signInCoordinator: SignInCoordinator?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)

        let navigationController = UINavigationController()

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        signInCoordinator = SignInCoordinator(navigationController)
        signInCoordinator?.start()

        return true
    }
}
