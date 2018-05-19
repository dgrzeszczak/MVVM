//
//  ViewModel.swift
//  MVVM
//
//  Created by Dariusz Grzeszczak on 29/01/2018.
//  Copyright © 2018 Dariusz Grzeszczak. All rights reserved.
//

public typealias ViewModelContext = UIViewController
public typealias ViewModel = Any

extension ViewModelContext {
    private struct AssociatedKeys {
        static var viewModelStoreKey = "com.db.viewModelStore"
    }

    var viewModelStore: ViewModelStore? {
        get { return objc_getAssociatedObject(self, &AssociatedKeys.viewModelStoreKey) as? ViewModelStore }
        set { objc_setAssociatedObject(self, &AssociatedKeys.viewModelStoreKey, newValue, .OBJC_ASSOCIATION_RETAIN) }
    }
}
