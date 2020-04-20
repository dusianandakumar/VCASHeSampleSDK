//
//  VCASHeSampleSDK.swift
//  VCASHeSampleSDK
//
//  Created by Anandakumar Dusi on 20/04/20.
//  Copyright © 2020 CASHe. All rights reserved.
//

import Foundation
import Network
import UIKit

public class NetStatus {
    
    // MARK: - Properties
    
    static public let shared = NetStatus()
    
    public func getJSLocation() -> NSURL{
    
        let REACT_DEV_MODE = false
        
        var jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios&dev=true")
        
        if !REACT_DEV_MODE {
            let bundle = Bundle(for: type(of: self))
            jsCodeLocation = NSURL.init(fileURLWithPath: bundle.path(forResource: "main", ofType: "jsbundle")!)
            //jsCodeLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle") as NSURL?
        }
        
        return jsCodeLocation!
        
    }
    
}

