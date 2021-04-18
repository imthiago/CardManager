//
//  LoginViewController.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 10/03/21.
//

import UIKit
import IQKeyboardManagerSwift

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

    private lazy var signInButton: UIButton = {
        DefaultButton(title: "ENTRAR")
    }()

    private lazy var signUpButton: UIButton = {
        UIButton(frame: .zero)
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
        view.addSubview(signInButton)
        view.addSubview(signUpButton)
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

        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40).isActive = true
        signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 44).isActive = true

        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        signUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 77).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 44).isActive = true

    }

    func configureViews() {
        backgroundView.image = UIImage(named: "imgSplash")
        backgroundView.contentMode = .redraw

        emailTextField.tintColor = .white
        emailTextField.attributedPlaceholder =
            .init(string: "E-MAIL", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        emailTextField.font = .systemFont(ofSize: 14)
        emailTextField.keyboardType = .emailAddress
        emailTextField.keyboardDistanceFromTextField = 100

        passwordTextField.tintColor = .white
        passwordTextField.attributedPlaceholder =
            .init(string: "SENHA", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordTextField.font = .systemFont(ofSize: 14)
        passwordTextField.isSecureTextEntry = true
        passwordTextField.keyboardDistanceFromTextField = 50

        signUpButton.setTitle("SOLICITAR CADASTRO", for: .normal)
        signUpButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
    }

    func configureNavigation() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
