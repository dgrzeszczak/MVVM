//
//  CompositeViewModelFactory.swift
//  MVVM
//
//  Created by Dariusz Grzeszczak on 29/01/2018.
//  Copyright © 2018 Dariusz Grzeszczak. All rights reserved.
//

public struct CompositeViewModelFactory: ViewModelFactory {
    private let factories: [ViewModelFactory]
    public init(with factories: [ViewModelFactory]) {
        self.factories = factories
    }

    public func create<VM: ViewModel>() -> VM? {
        for factory in factories {
            if let viewModel: VM = factory.create() {
                return viewModel
            }
        }

        return nil
    }
}
