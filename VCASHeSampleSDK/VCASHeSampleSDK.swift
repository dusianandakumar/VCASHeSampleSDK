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
    
    public func getJSLocation() -> NSURL{
    
        let REACT_DEV_MODE = false
        
        var jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios&dev=true")
        
        if !REACT_DEV_MODE {
            jsCodeLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle") as NSURL?
        }
        
        return jsCodeLocation!
        
    }
    
}

