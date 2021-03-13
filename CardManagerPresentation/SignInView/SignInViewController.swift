//
//  LoginViewController.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 10/03/21.
//

import UIKit

class SignInViewController: UIViewController {
    weak var coordinator: SignInCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        applyViewCode()
        view.backgroundColor = .yellow
    }
}

extension SignInViewController: ViewCodable {
    func buildHierarchy() {
        //
    }

    func setupConstraints() {
        //
    }

    func configureViews() {
        //
    }
}
