//
//  LoginRouter.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//Copyright © 2020 Quinn. All rights reserved.
//

import Foundation
import Viperit

class LoginRouter: Router {
    func gotoHome(){
        let module = AppModules.Home.build()
        module.router.show(inWindow: SceneDelegate.mainWindow, embedInNavController: true, setupData: nil, makeKeyAndVisible: true)
    }
}
