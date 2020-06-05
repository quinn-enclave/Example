//
//  LoginView.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//Copyright © 2020 Quinn. All rights reserved.
//

import UIKit
import Viperit
import RSLoadingView

////////////////////////////////////////////////////////////////////////////////
/// MARK: - Public Interface Protocol
////////////////////////////////////////////////////////////////////////////////
protocol LoginViewInterface {
	func showLoading()
	func hideLoading()
	func showError(message: String)
}

////////////////////////////////////////////////////////////////////////////////
//MARK: LoginView Class
////////////////////////////////////////////////////////////////////////////////
final class LoginView: UserInterface {
     @IBAction func LoginAction(_ sender: Any) {
        displayData.email = "lincoln@enclave.vn"
        displayData.password = "12345678"
        showLoading()
        presenter.login()
    }
}

////////////////////////////////////////////////////////////////////////////////
//MARK: - Public interface
////////////////////////////////////////////////////////////////////////////////
extension LoginView: LoginViewInterface {
	func showLoading() {
        let loadingView = RSLoadingView()
        loadingView.showOnKeyWindow()
    }
    func hideLoading() {
        RSLoadingView.hideFromKeyWindow()
    }
	func showError(message: String) {
        hideLoading()
        self.showErrorAlert(message)
	}
}
