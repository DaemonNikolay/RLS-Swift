//
//  NetworkManager.swift
//  RLS
//
//  Created by Nikolay Eckert on 13.06.2020.
//  Copyright © 2020 Nikolay Eckert. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {
    func request(urlTo: String, headers: HTTPHeaders?, parameters: Parameters?, method: HTTPMethod) -> DataRequest {
        return AF.request(urlTo, method: method, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
    }
    
    
//    AF.request(URL.init(string: url)!, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
//        print(response.result)
//
//        switch response.result {
//
//        case .success(_):
//            if let json = response.value
//            {
//                successHandler((json as! [String:AnyObject]))
//            }
//            break
//        case .failure(let error):
//            failureHandler([error as Error])
//            break
//        }
//    }
}
