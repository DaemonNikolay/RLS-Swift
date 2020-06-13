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
    
    public func log(content: String, type: LogType) throws {
        print("log...")
        
        let appToken: String? = Bundle.main.object(forInfoDictionaryKey: "RLSAppToken") as? String
        
        guard appToken == nil else {
            throw RLSError.appToken("App token not found")
        }
        
        let apiManager = ApiManager()
        apiManager.log(content: content, type: type, appToken: appToken!)
    }
}

public enum RLSError: Error {
    case appToken(String)
}
