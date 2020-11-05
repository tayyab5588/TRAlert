//
//  TRAlert.swift
//  TRAlert
//
//  Created by Tayyab on 22/09/2020.
//  Copyright © 2020 TechMate. All rights reserved.
//

import UIKit

let Alert = TRAlert.shared

public class TRAlert {
    
    static let shared = TRAlert()
    
    @discardableResult
    func show(title: String, body: String, buttons: [TRAlertButton]?) -> TRAlertViewController? {
        guard let topViewController = UIViewController.topViewController() else { return nil }
        return TRAlertViewController.load(from: topViewController, title: title, message: body, buttons: buttons)
    }
    
    func designAlert(viewColor: UIColor,buttonTextColor: UIColor,buttonColor: UIColor, font:UIFont) -> TRAlertViewController?  {
        guard let topViewController = UIViewController.topViewController() else { return nil }
        return TRAlertViewController.loadDesign(from: topViewController, viewColor: viewColor, buttonTextColor: buttonTextColor,buttonColor: buttonColor, font:font )
    }
    
}
