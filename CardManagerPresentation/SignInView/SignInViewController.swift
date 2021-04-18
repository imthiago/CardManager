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
    private lazy var backgroundView: UIImageView = {
        UIImageView(frame: .zero)
    }()

    private lazy var emailTextField: UITextField = {
        BindingTextField(frame: .zero)
    }()

    private lazy var passwordTextField: UITextField = {
        BindingTextField(frame: .zero)
    }()

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
        view.addSubview(passwordTextField)
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

        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true

    }

    func configureViews() {
        backgroundView.image = UIImage(named: "imgSplash")
        backgroundView.contentMode = .redraw

        emailTextField.tintColor = .white
        emailTextField.attributedPlaceholder =
            .init(string: "E-MAIL", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        emailTextField.font = .systemFont(ofSize: 14)
        emailTextField.keyboardType = .emailAddress

        passwordTextField.tintColor = .white
        passwordTextField.attributedPlaceholder =
            .init(string: "SENHA", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordTextField.font = .systemFont(ofSize: 14)
        passwordTextField.isSecureTextEntry = true
    }

    func configureNavigation() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
