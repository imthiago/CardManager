//
//  SignInViewModel.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 18/04/21.
//

import Foundation

public protocol SignInViewModable {
    func didTapSignIn()
    func didTapSignUp()
}

public class SignInViewModel: SignInViewModable {
    public func didTapSignIn() {
        print("SignIn")
    }

    public func didTapSignUp() {
        print("SignUp")
    }
}
