//
//  ViewController.swift
//  TRAlert
//
//  Created by tayyab5588 on 10/17/2020.
//  Copyright (c) 2020 tayyab5588. All rights reserved.
//

import UIKit
import TRAlert


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func trAlertButton(_ sender: UIButton) {
//        let cancelButton = TRAlertButton(title: "Cancel") { [weak self] in
//            guard let _ = self else { return }
//        }
//        let okButton = TRAlertButton(title: "Ok") { [weak self] in
//            guard let _ = self else { return }
//        }
        Alert.show(title: "TRAlert", body: "Show message text", buttons: [])
//        return
    }
}

