//
//  MaterialTextField.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 18/03/21.
//

import MaterialTextField

class MaterialTextField: MFTextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(placeholder: String, color: UIColor) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        self.tintColor = color
    }
}
