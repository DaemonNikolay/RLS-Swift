//
//  RLS.swift
//  RLS
//
//  Created by Nikolay Eckert on 13.06.2020.
//  Copyright © 2020 Nikolay Eckert. All rights reserved.
//

import Foundation
import Alamofire

public class RLS {
    
    public init() {
        
    }
    
    public func log(content: String, type: LogType, appToken: String) {
        print("log...1")
        
        let apiManager = ApiManager()
        apiManager.log(content: content, type: type, appToken: appToken)
    }
}

public enum RLSError: Error {
    case appToken(String)
    case content(String)
}
