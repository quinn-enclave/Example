//
//  CommonModel.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

import Foundation
import ObjectMapper

public class CommonModel: Mappable, BaseModel {
    var code    : Int!
    var success    : Bool!
    var message    : String!
    var data    : JSON?
    var errors: JSON?
    
    
    required public init?(map: Map) {
        
    }
    
    // Mappable
    public func mapping(map: Map) {
        code         <- map["code"]
        success         <- map["success"]
        message         <- map["message"]
        data         <- map["data"]
        errors         <- map["errors"]
    }
}
