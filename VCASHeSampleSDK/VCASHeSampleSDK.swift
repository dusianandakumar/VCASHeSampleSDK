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
    
    public func getBundlePath() -> URL{
        let podBundle = Bundle(for: NetStatus.self)
        if let bundleURL = podBundle.url(forResource: "VCASHeSampleSDK", withExtension: "bundle")
        {
             let bundle = Bundle(url:bundleURL)!
             let path = bundle.path(forResource: "main", ofType: "jsbundle")!
             let jsBundleLocation = URL(fileURLWithPath: path)
            return jsBundleLocation
        }
        return URL.init(fileURLWithPath: "")
    }
}

