//
//  LoginAutoGeneratedCode.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//Copyright © 2020 Quinn. All rights reserved.
//

import Foundation
import Viperit

////////////////////////////////////////////////////////////////////////////////
// MARK: - VIPER COMPONENTS API (Auto-generated code)
////////////////////////////////////////////////////////////////////////////////
extension LoginView {
    var presenter: LoginPresenter {
        return _presenter as! LoginPresenter
    }
    var displayData: LoginDisplayData {
        return _displayData as! LoginDisplayData
    }
}

////////////////////////////////////////////////////////////////////////////////
// MARK: - VIPER COMPONENTS API (Auto-generated code)
////////////////////////////////////////////////////////////////////////////////
extension LoginRouter {
    var presenter: LoginPresenter {
        return _presenter as! LoginPresenter
    }
}

////////////////////////////////////////////////////////////////////////////////
// MARK: - VIPER COMPONENTS API (Auto-generated code)
////////////////////////////////////////////////////////////////////////////////
extension LoginInteractor {
    var presenter: LoginPresenter {
        return _presenter as! LoginPresenter
    }

    var view: LoginView {
        return presenter.view as! LoginView
    }
    
    var displayData: LoginDisplayData {
        return view.displayData
    }
}

////////////////////////////////////////////////////////////////////////////////
// MARK: - VIPER COMPONENTS API (Auto-generated code)
////////////////////////////////////////////////////////////////////////////////
extension LoginPresenter {
    var view: LoginViewInterface {
        return _view as! LoginViewInterface
    }
    var interactor: LoginInteractor {
        return _interactor as! LoginInteractor
    }
    var router: LoginRouter {
        return _router as! LoginRouter
    }
}

////////////////////////////////////////////////////////////////////////////////
// MARK: - VIPER ACTION API (Auto-generated code)
////////////////////////////////////////////////////////////////////////////////
class LoginBaseAction: BaseAction {
    weak var interactor: LoginInteractor!
    var presenter: LoginPresenter {
        return interactor.presenter
    }
    required init(_ interactor: LoginInteractor) {
        self.interactor = interactor
    }
    
    func receivedResponse(_ data: BaseModel?) {
        
    }
    func receivedError(_ error: ServiceError) {
        interactor.view.showError(message: error.message)
    }
}
