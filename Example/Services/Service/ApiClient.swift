//
//  ApiClient.swift
//  Example
//
//  Created by Quinn on 6/5/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

let URL_STRING = "http://113.160.225.76:9901/api/v1/"

enum Path: String {
    case login = "login"
    
    
    var urlString: String {
        get {
            let path = self.rawValue
            return "\(URL_STRING)\(path)"
        }
    }
    
    func urlString(with id: Int) -> String {
        let path = self.rawValue
        return "\(URL_STRING)\(path)/\(id)"
    }
    
    func urlString(with params: [String:Any]) -> String {
        let path = self.rawValue
        var temp:String = ""
        for param in params {
            temp += param.key + "=" + "\(param.value)" + "&"
        }
        //temp = String(temp[..<temp.index(before: temp.endIndex)])
        temp.removeLast()
        return "\(URL_STRING)\(path)?\(temp)"
    }
}

class ApiClient {
    static var Shared = ApiClient()

    init() {
        
    }
    
    var loginModel: LoginModel?
    
    private var _header: HTTPHeaders {
        get{
            if let model = loginModel{
                return ["Content-Type" : "application/json",
                "Authorization" : "Bearer \(String(describing: model.access_token))"]
            }
            else {
                return ["Content-Type" : "application/json"]
            }
            
        }
    }
    
    private func request(with url: String, method: HTTPMethod,  params: Parameters?, completionHandler: @escaping (ServiceResult) -> Void) {
        
        print(url)
        
        AF.request(url, method: method, parameters: params, encoding: JSONEncoding.default, headers: _header)
            .validate(statusCode: 200..<500)
            .responseJSON { (response) in
            var result = ServiceResult()
            result.error = ServiceError.messageError(message: "Unkown error!")
            
            if let error = response.error{
                result.data = nil
                result.error = ServiceError.messageError(message: error.errorDescription ?? "")
            } else {
                switch response.result {
                case .success(let value):
                    if let json = value as? JSON {
                        if let commonModel = CommonModel(JSON: json){
                            if commonModel.success {
                                result.data = ResponseModel(json: commonModel.data!)
                                result.error = nil
                            }
                            else{
                                result.data = nil
                                result.error = ServiceError.messageError(message: commonModel.message)
                            }
                        }
                    }
                case .failure(let error):
                    result.data = nil
                    result.error = ServiceError.messageError(message: error.errorDescription ?? "")
                }
            }
            completionHandler(result)
        }
    }
    
    func request(with path: Path, method: HTTPMethod,  params: Parameters?, completionHandler: @escaping (ServiceResult) -> Void) {
        if let params = params, method == .get {
            request(with: path.urlString(with: params), method: method, params: nil, completionHandler: completionHandler)
        } else {
            request(with: path.urlString, method: method, params: params, completionHandler: completionHandler)
        }
    }
    
    func request(with path: Path, id: Int, method: HTTPMethod, params: Parameters?, completionHandler: @escaping (ServiceResult) -> Void) {
        request(with: path.urlString(with: id), method: method, params: params, completionHandler: completionHandler)
    }
}
