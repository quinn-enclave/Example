//
//  LoginPresenter.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//Copyright © 2020 Quinn. All rights reserved.
//

import Foundation
import Viperit

class LoginPresenter: Presenter {
    func gotoHome(){
        view.hideLoading()
        router.gotoHome()
    }
    
    func login(){
        interactor.login()
    }
}

