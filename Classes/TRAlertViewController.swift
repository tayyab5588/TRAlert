//
//  TRAlertViewController.swift
//  TRAlert
//
//  Created by Tayyab on 21/09/2020.
//  Copyright © 2020 TechMate. All rights reserved.
//

import UIKit

struct TRAlertButton {
    var title: String!;
    var action: (() -> Swift.Void)? = nil;
}

public class TRAlertViewController: UIViewController {

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
    
    // Mark:- IBOutlet
    
    @IBOutlet var heading: UILabel!
    @IBOutlet var message: UILabel!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var firstButtonStack: UIStackView!
    @IBOutlet weak var secondButtonStack: UIStackView!
    
    var alertTitle = String()
    var alertBody = String()
    var actionButtonTwoTitle = String()
    var buttons = [TRAlertButton]()
  public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
   public func setupView() {
        
        self.heading.text = alertTitle
        self.message.text = alertBody
        
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
