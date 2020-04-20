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
        let bundle = Bundle(for: type(of: self))
        // let bundle = Bundle(for: ClassOfInterest.self)) // or by pointing to class of interest
        let path = bundle.path(forResource: "main", ofType: "jsbundle")!
        let url = URL(fileURLWithPath: path)
        //let data = try! Data(contentsOf: url)
        return url
    }
}

