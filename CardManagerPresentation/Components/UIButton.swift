//
//  DefaultUIButton.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 13/03/21.
//

import UIKit

class DefaultButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(title: String) {
        super.init(frame: .zero)
        backgroundColor = .purple
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        layer.cornerRadius = 8
        layer.masksToBounds = true
    }
}
