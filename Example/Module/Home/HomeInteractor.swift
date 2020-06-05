//
//  HomeInteractor.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//Copyright © 2020 Quinn. All rights reserved.
//

import Foundation
import Viperit

class HomeInteractor: Interactor {
	var service: AlamofireService
    required init() {
        service = AlamofireService()
    }
}

////////////////////////////////////////////////////////////////////////////////
// MARK: - Actions
////////////////////////////////////////////////////////////////////////////////
class HomeAction: HomeBaseAction {
    override func receivedResponse(_ data: BaseModel?) {
        
    }
}

