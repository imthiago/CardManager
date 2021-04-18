//
//  Property.swift
//  CardManagerPresentation
//
//  Created by Thiago Oliveira on 18/03/21.
//

class Observable<Type> {
    private var subscribeAction: (Type?) -> Void = { _ in }

    func subscribe(_ closure: @escaping (Type?) -> Void) {
        subscribeAction = closure

        if let value = value {
            self.subscribeAction(value)
        }
    }

    var value: Type? {
        didSet {
            subscribeAction(value)
        }
    }

    init(_ val: Type) {
        value = val
    }
}
