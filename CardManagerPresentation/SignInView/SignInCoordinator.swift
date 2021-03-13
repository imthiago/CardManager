//
//  LoginCoordinator.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 11/03/21.
//

import UIKit

public class SignInCoordinator: Coordinator {
    var navigationController: UINavigationController

    var childCoordinators = [Coordinator]()

    required public init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    public func start() {
        guard navigationController.viewControllers.isEmpty else {
            navigationController.popToRootViewController(animated: true)
            return
        }
        let signInViewController = SignInViewController()
        signInViewController.coordinator = self
        navigationController.pushViewController(signInViewController, animated: true)
    }
}
