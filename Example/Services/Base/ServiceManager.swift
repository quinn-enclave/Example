//
//  ServiceManager.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

protocol ServiceManagerDelegate: class {
    func receivedResponse(_ response: ServiceResult)
    func receivedError(_ error: ServiceError)
}

class ServiceManager {
    static let shared = ServiceManager()
    weak var delegate: ServiceManagerDelegate?
}
