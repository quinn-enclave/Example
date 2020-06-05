//
//  LoginInteractor.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//Copyright © 2020 Quinn. All rights reserved.
//

import Foundation
import Viperit

class LoginInteractor: Interactor {
	var service: AlamofireService
    required init() {
        service = AlamofireService()
    }
    
    func login(){
        service.login(displayData.email, displayData.password, LoginAction(self))
    }
}

////////////////////////////////////////////////////////////////////////////////
// MARK: - Actions
////////////////////////////////////////////////////////////////////////////////
class LoginAction: LoginBaseAction {
    override func receivedResponse(_ data: BaseModel?) {
        presenter.gotoHome()
    }
}

