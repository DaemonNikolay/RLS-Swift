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
    func request(urlTo: String, headers: HTTPHeaders, parameters: Parameters?, method: HTTPMethod) -> DataRequest {
        return AF.request(urlTo, method: method, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
    }
}
