//
//  ViewModelProviders.swift
//  MVVM
//
//  Created by Dariusz Grzeszczak on 29/01/2018.
//  Copyright © 2018 Dariusz Grzeszczak. All rights reserved.
//

public final class ViewModelProviders {

    public static func get(for context: ViewModelContext, with factory: ViewModelFactory) -> ViewModelProvider {
        let store: ViewModelStore
        if let existing = context.viewModelStore {
            store = existing
        } else {
            store = ViewModelStore()
            context.viewModelStore = store
        }

        return ViewModelProvider(with: store, factory: factory)
    }
}
