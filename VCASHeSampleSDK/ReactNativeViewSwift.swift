//
//  ReactNativeViewSwift.swift
//  VCASHeSampleSDK
//
//  Created by Anandakumar Dusi on 20/04/20.
//  Copyright © 2020 CASHe. All rights reserved.
//

import Foundation
import UIKit

class ReactNativeViewSwift: UIView {
    
    var data: [String: AnyObject]?

    func initializeReactView() {
    
        let REACT_DEV_MODE = false
        
        if self.data == nil {
            self.data = [String: AnyObject]()
        }
        
        // this is a good place to pass configuration variables
        self.data!["DEV_MODE"]            = REACT_DEV_MODE as AnyObject
        self.data!["API_KEY"]             = "ABCDEF123456" as AnyObject
        self.data!["AUTHORIZATION_TOKEN"] = "a8b6de25b5bf481824c9c4173c56231a" as AnyObject
        
        var jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios&dev=true")
        
        if !REACT_DEV_MODE {
            jsCodeLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle") as NSURL?
        }
        
        let rootView = RCTRootView(bundleURL: jsCodeLocation,
            moduleName: "ReactNativeExample",
            initialProperties: self.data!,
            launchOptions: nil)
        rootView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rootView)
        
        let views = ["rootView": rootView]
        var constraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[rootView]-0-|", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[rootView]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views)
        
        self.addConstraints(constraints)
        self.layoutIfNeeded()
    }

}
