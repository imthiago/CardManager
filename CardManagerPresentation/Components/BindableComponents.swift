//
//  BindableComponents.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 18/03/21.
//

import UIKit
import MaterialTextField

class BindingTextField: MFTextField {
    var textChanged: (String) -> Void = { _ in }

    func subscribe(callback: @escaping (String) -> Void) {
        self.textChanged = callback
        self.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }

    @objc func textFieldDidChange(_ textField: UITextField) {
        self.textChanged(textField.text!)
    }
}
