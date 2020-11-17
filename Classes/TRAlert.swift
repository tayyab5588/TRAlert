//
//  TRAlert.swift
//  TRAlert
//
//  Created by Tayyab on 22/09/2020.
//  Copyright © 2020 TechMate. All rights reserved.
//

import UIKit

public class TRAlertConfigs {
    
    static let buttonBGColor = UIColor.black
    static let viewBGColor = UIColor.white
    static let font = UIFont(name: "ProximaNova-Regular", size: 17.0)
    
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
