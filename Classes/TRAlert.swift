//
//  TRAlert.swift
//  TRAlert
//
//  Created by Tayyab on 22/09/2020.
//  Copyright © 2020 TechMate. All rights reserved.
//

import UIKit

public class TRAlertConfigs: NSObject {
    
    public override init() {
        super.init()
    }
    
    public var buttonBGColor = UIColor.blue
    public var viewBGColor = UIColor.cyan
    public var buttonTextColor = UIColor.red
    public var font = UIFont(name: "ProximaNova-Regular", size: 17.0)
    
    
//
//    public init(buttonBGColor: UIColor, viewBGColor: UIColor,buttonTextColor: UIColor, font: UIFont) {
//        self.buttonBGColor = buttonBGColor
//        self.viewBGColor = viewBGColor
//        self.buttonTextColor = buttonTextColor
//        self.font = font
//       }
    
    
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
