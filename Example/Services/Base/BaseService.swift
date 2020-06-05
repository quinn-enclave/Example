//
//  BaseService.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

import Foundation

typealias JSON = [String: Any]

class BaseService {
    func sendResponse(_ response: ServiceResult) {
        if let delegate = ServiceManager.shared.delegate {
            if let error = response.error {
                delegate.receivedError(error)
            } else {
                delegate.receivedResponse(response)
            }
        }
    }
}
