//
//  TRAlertViewController.swift
//  TRAlert
//
//  Created by Tayyab on 21/09/2020.
//  Copyright © 2020 TechMate. All rights reserved.
//

import UIKit

public struct TRAlertButton {
    public  var title: String!;
    public var action: (() -> Swift.Void)? = nil;
}

open class TRAlertViewController: UIViewController {
    
    static func load(from controller: UIViewController, title: String, message: String, buttons: [TRAlertButton]?) -> TRAlertViewController {
        
        let storyboard = UIStoryboard(name: "TRAlert", bundle: .main)
        let alertVC = storyboard.instantiateViewController(withIdentifier: "TRAlertViewController") as! TRAlertViewController
        alertVC.alertTitle = title
        alertVC.alertBody = message
        if let alertButtons = buttons {
            alertVC.buttons = alertButtons
        }
        else {
            alertVC.buttons = [TRAlertButton(title: "OK", action: nil)]
        }
        alertVC.modalPresentationStyle = .overCurrentContext
        alertVC.modalTransitionStyle = .crossDissolve
        DispatchQueue.main.async {
            controller.present(alertVC, animated: true)
        }
        return alertVC
    }
    
    static func loadDesign(from controller: UIViewController, viewColor: UIColor,buttonTextColor: UIColor,buttonColor: UIColor, font:UIFont ) -> TRAlertViewController {
        
        let storyboard = UIStoryboard(name: "TRAlert", bundle: .main)
        let alertVC = storyboard.instantiateViewController(withIdentifier: "TRAlertViewController") as! TRAlertViewController
        alertVC.font = font
        alertVC.viewColor = viewColor
        alertVC.buttonTextColor = buttonTextColor
        alertVC.buttonColor = buttonColor
        
        return alertVC
    }
    
    // Mark:- IBOutlet
    
    @IBOutlet var heading: UILabel!
    @IBOutlet var message: UILabel!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    
    
    open var alertTitle = String()
    open var alertBody = String()
    open var actionButtonTwoTitle = String()
    open var buttons = [TRAlertButton]()
    open var viewColor : UIColor?
    open var buttonColor : UIColor?
    open var buttonTextColor : UIColor?
    open var font : UIFont?
     override open func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        
        self.heading.text = alertTitle
        self.message.text = alertBody
        
        self.button1.backgroundColor = buttonColor
        self.button2.setTitleColor(buttonTextColor, for: .normal)
        self.button1.setTitleColor(buttonTextColor, for: .normal)
        self.parentView.backgroundColor = viewColor
        self.backgroundView.backgroundColor = viewColor
        
        button1.setTitle(buttons[0].title, for: .normal)
        if buttons.count == 2 {
            button2.setTitle(buttons[1].title, for: .normal)
            button2.isHidden = false
        }
        else {
            button2.isHidden = true
        }
    }
    
    
    
    @IBAction func onClickButtonOne(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        buttons[0].action?()
    }
    @IBAction func onClickButtonTwo(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        buttons[1].action?()
    }
}

extension UIViewController {
    public  class func topViewController(_ base: UIViewController? = UIApplication.shared.windows.first!.rootViewController) -> UIViewController? {
        
        if let nav = base as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(presented)
        }
        return base
    }
    
}
