//
//  ViewCodeConfiguration.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 10/03/21.
//

import Foundation

protocol ViewCodable {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCodable {
    func applyViewCode() {
        buildHierarchy()
        setupConstraints()
        configureViews()
    }
}
