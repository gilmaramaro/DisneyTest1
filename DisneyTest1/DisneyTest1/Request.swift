//
//  Request.swift
//  DisneyTest1
//
//  Created by Gilmar Amaro on 07/04/23.
//

import UIKit
import Alamofire

class Request: NSObject {

    func requestLogin(email: String, Password: String, completion: @escaping (Bool) ->Void) {
        let param = ["email":email, "password":Password]
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/signin", method: .post, parameters: param, encoder: JSONParameterEncoder.default).response { response in
            if response.response?.statusCode == 200 {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
