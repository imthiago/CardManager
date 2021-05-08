//
//  Style+CardManager.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 13/03/21.
//

import UIKit

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
    static var cardManagerOrange: UIColor {
        return UIColor(red: 255/255, green: 120/255, blue: 50/255, alpha: 1)
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
