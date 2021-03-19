//
//  Style+CardManager.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 13/03/21.
//

import UIKit

extension Style {
    static var cardManager: Style {
        return Style(backgroundColor: .black,
                     preferredStatusBarStyle: .lightContent,
                     attributesForStyle: { $0.cardManagerAttributes })
    }
}

private extension Style.TextStyle {
    var cardManagerAttributes: Style.TextAttributes {
        switch self {
        case .navigationBar:
            return Style.TextAttributes(font: .cardManagerTitle, color: .cardManagerGreen, backgroundColor: .black)
        case .title:
            return Style.TextAttributes(font: .cardManagerTitle, color: .cardManagerGreen)
        case .subtitle:
            return Style.TextAttributes(font: .cardMangerSubtitle, color: .cardManagerBlue)
        case .body:
            return Style.TextAttributes(font: .cardManagerBody, color: .black, backgroundColor: .white)
        case .button:
            return Style.TextAttributes(font: .cardMangerSubtitle, color: .white, backgroundColor: .cardManagerRed)
        case .textField:
            return Style.TextAttributes(font: .cardManagerTextField, color: .white)
        }
    }
}

extension UIColor {
    static var cardManagerRed: UIColor {
        return UIColor(red: 1, green: 0.1, blue: 0.1, alpha: 1)
    }
    static var cardManagerGreen: UIColor {
        return UIColor(red: 0, green: 1, blue: 0, alpha: 1)
    }
    static var cardManagerBlue: UIColor {
        return UIColor(red: 0, green: 0.2, blue: 0.9, alpha: 1)
    }
}

extension UIFont {
    static var cardManagerTitle: UIFont {
        return UIFont.systemFont(ofSize: 17)
    }
    static var cardMangerSubtitle: UIFont {
        return UIFont.systemFont(ofSize: 15)
    }
    static var cardManagerBody: UIFont {
        return UIFont.systemFont(ofSize: 14)
    }
    static var cardManagerTextField: UIFont {
        return UIFont.systemFont(ofSize: 12)
    }
}
