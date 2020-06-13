//
//  ApiManage.swift
//  RLS
//
//  Created by Nikolay Eckert on 13.06.2020.
//  Copyright © 2020 Nikolay Eckert. All rights reserved.
//

import Foundation
import Alamofire

internal class ApiManager {
    private let ApiUrl:String = "https://localhost:5700"
    
    internal func log(content: String, type: LogType, appToken: String) {
        let networkManager = NetworkManager()
        
        var headers: HTTPHeaders = HTTPHeaders()
        headers.add(name: "Authorization", value: "Bearer \(appToken)")
        
        let params: Parameters = [
            "content": content,
            "type": type,
            "appToken": appToken
        ]
        
        networkManager.request(urlTo: ApiUrl, headers: headers, parameters: params, method: .post)
            .validate()
            .responseJSON { response in
                switch response.result {
                case .success(let value):
                    if let json = value as? [String: Any] {
                        print(json)
                    }
                case .failure(let error):
                    print(error)
                }
        }
    }
}

public enum LogType: String {
    case info = "info"
    case warning = "warning"
    case error = "error"
}
