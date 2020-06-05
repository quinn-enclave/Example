//
//  Login.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

import Foundation

import ObjectMapper

public class LoginModel: Mappable, BaseModel {
    var access_token    : String!
    var token_type    : String!
    var expires_at    : String!
    
    required public init?(map: Map) {
        
    }
    
    // Mappable
    public func mapping(map: Map) {
        access_token         <- map["access_token"]
        token_type         <- map["token_type"]
        expires_at         <- map["expires_at"]
    }
}
