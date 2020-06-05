//
//  BaseModel.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

import Foundation

protocol BaseModel {
    
}

struct ResponseModel {
    var json: [String: Any]
}

protocol BaseAction {
    func receivedResponse(_ data: BaseModel?)
    func receivedError(_ error: ServiceError)
}

enum ServiceError: Error {
    case messageError(message: String)
    
    var message: String {
        switch self {
        case .messageError(let message):
            return message
        }
    }
}

struct ServiceResult {
    var data: ResponseModel?
    var error: ServiceError?
}
