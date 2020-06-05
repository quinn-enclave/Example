//
//  AppDependency.swift
//  Venus
//
//  Created by Quoc (Quinn) H. NGUYEN on 6/30/17.
//  Copyright © 2017 Quoc (Quinn) H. NGUYEN. All rights reserved.
//

import UIKit
import Foundation
import Viperit

class AppDependency{
    
    init() {
    }
    
    func attachRootViewControllerInWindow(_ window: UIWindow!) {
        if isOK() {
            let module = AppModules.Home.build()
            module.router.show(inWindow: window, embedInNavController: true, setupData: nil, makeKeyAndVisible: true)
        } else {
            let module = AppModules.Login.build()
            module.router.show(inWindow: window, embedInNavController: false, setupData: nil, makeKeyAndVisible: false)
        }
    }
    
    fileprivate func isOK() -> Bool {
        return false
    }
}
