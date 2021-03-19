//
//  Styles.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 13/03/21.
//

import UIKit

class Style {
    enum TextStyle {
        case navigationBar
        case title
        case subtitle
        case body
        case button
        case textField
    }

    struct TextAttributes {
        let font: UIFont
        let color: UIColor
        let backgroundColor: UIColor?

        init(font: UIFont, color: UIColor, backgroundColor: UIColor? = nil) {
            self.font = font
            self.color = color
            self.backgroundColor = backgroundColor
        }
    }

    // MARK: - General Properties
    let backgroundColor: UIColor
    let preferredStatusBarStyle: UIStatusBarStyle

    let attributesForStyle: (_ style: TextStyle) -> TextAttributes

    init(backgroundColor: UIColor,
         preferredStatusBarStyle: UIStatusBarStyle = .default,
         attributesForStyle: @escaping (_ style: TextStyle) -> TextAttributes) {
        self.backgroundColor = backgroundColor
        self.preferredStatusBarStyle = preferredStatusBarStyle
        self.attributesForStyle = attributesForStyle
    }

    // MARK: - Convenience Getters
    func font(fot style: TextStyle) -> UIFont {
        return attributesForStyle(style).font
    }

    func color(fot style: TextStyle) -> UIColor {
        return attributesForStyle(style).color
    }

    func backgroundColor(fot style: TextStyle) -> UIColor? {
        return attributesForStyle(style).backgroundColor
    }

    // MARK: - Convenience apply style methods
    func apply(textStyle: TextStyle, to label: UILabel) {
        let attributes = attributesForStyle(textStyle)
        label.font = attributes.font
        label.textColor = attributes.color
        label.backgroundColor = attributes.backgroundColor
    }

    func apply(textStyle: TextStyle = .button, to button: UIButton) {
        let attributes = attributesForStyle(textStyle)
        button.setTitleColor(attributes.color, for: .normal)
        button.titleLabel?.font = attributes.font
        button.backgroundColor = attributes.backgroundColor
    }

    func apply(textStyle: TextStyle = .navigationBar, to navigationBar: UINavigationBar) {
        let attibutes = attributesForStyle(textStyle)
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: attibutes.font,
            NSAttributedString.Key.foregroundColor: attibutes.color
        ]

        if let color = attibutes.backgroundColor {
            navigationBar.barTintColor = color
        }

        navigationBar.tintColor = attibutes.color
        navigationBar.barStyle = preferredStatusBarStyle == .default ? .default : .black
    }

    func apply(textStyle: TextStyle = .textField, to textField: UITextField) {
        let attributes = attributesForStyle(textStyle)
        textField.font = attributes.font
        textField.textColor = attributes.color
    }
}
