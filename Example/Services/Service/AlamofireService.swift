//
//  AlamofireService.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

import Foundation
class AlamofireService {
    func login(_ email: String,_ password: String, _ action: BaseAction) {
        let params = ["email": email, "password": password]
        ApiClient.Shared.request(with: .login, method: .post, params: params) { (result) in
            if let error = result.error {
                action.receivedError(error)
            } else {
                let loginModel = LoginModel(JSON: result.data!.json)
                ApiClient.Shared.loginModel = loginModel
                action.receivedResponse(loginModel)
            }
        }
    }
}

