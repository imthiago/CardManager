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
}
