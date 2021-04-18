//
//  Extensions.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 17/04/21.
//

import UIKit

// MARK: - UIColor
extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
