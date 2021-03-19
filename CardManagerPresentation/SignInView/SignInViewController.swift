//
//  LoginViewController.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 10/03/21.
//

import UIKit

class SignInViewController: UIViewController {

    // MARK: - Public properties
    public weak var coordinator: SignInCoordinator?

    // MARK: - Private properties
    private lazy var backgroundView: UIImageView = { return UIImageView(frame: .zero) }()
    private lazy var emailTextField: UITextField = { return BindingTextField(frame: .zero) }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        applyViewCode()
    }
}

extension SignInViewController: ViewCodable & UITextFieldDelegate {
    func buildHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(emailTextField)
    }

    func setupConstraints() {
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 306).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
    }

    func configureViews() {
        backgroundView.image = UIImage(named: "imgSplash")
        backgroundView.contentMode = .redraw

        emailTextField.placeholder = "E-MAIL"
    }

    func configureNavigation() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
