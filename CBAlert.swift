//
//  CBAlert.swift
//  Dr. Diana Enachescu
//
//  Created by Zoom-Biz on 29.08.2016.
//  Copyright © 2016 Zoom-Biz. All rights reserved.
//

import Foundation
import UIKit


/// Methods for creating quick alerts
class CBAlert {
    
    
    /// Alert with OK action
    ///
    /// - parameter controller: Controller to dispaly
    /// - parameter title:      Alert title
    /// - parameter message:    Alert message
    static func simpleAlert(_ controller: UIViewController, title: String?, message: String?) {
        
        let simpleAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        simpleAlert.addAction(okAction)
        
        controller.present(simpleAlert, animated: true, completion: nil)
    }
    
    
    /// Alert with custom OK handler
    ///
    /// - parameter controller: Controller to display
    /// - parameter title:      Alert title
    /// - parameter message:    Alert message
    /// - parameter handler:    OK action handler
    static func dismsissAlert(_ controller: UIViewController, title: String, message: String, handler: ((UIAlertAction) -> Void)?) {
        
        let simpleAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: handler)
        simpleAlert.addAction(okAction)
        
        controller.present(simpleAlert, animated: true, completion: nil)
    }
    
}
