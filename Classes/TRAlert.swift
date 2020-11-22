//
//  TRAlert.swift
//  TRAlert
//
//  Created by Tayyab on 22/09/2020.
//  Copyright © 2020 TechMate. All rights reserved.
//

import UIKit

public class TRAlertConfigs {
    
    
    public static var buttonBGColor = UIColor.black
    public static var viewBGColor = UIColor.white
    public static var buttonTextColor = UIColor.white
    public static var headingFont = UIFont(name: "AmericanTypewriter-Bold", size: 18.0)
    public static var messageFont = UIFont(name: "AmericanTypewriter", size: 15.0)
    
    
}

public let Alert = TRAlert.shared


public class TRAlert {
    
    static let shared = TRAlert()
    
    
    
    @discardableResult
    public func show(title: String, body: String, buttons: [TRAlertButton]?) -> TRAlertViewController? {
        guard let topViewController = UIViewController.topViewController() else { return nil }
        return TRAlertViewController.load(from: topViewController, title: title, message: body, buttons: buttons)
    }
    
    
}
