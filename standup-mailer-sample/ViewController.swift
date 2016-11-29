//
//  ViewController.swift
//  standup-mailer-sample
//
//  Created by otukutun on 11/29/16.
//  Copyright © 2016 otukutun. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startUpMailButton(_ sender: AnyObject) {
        if MFMailComposeViewController.canSendMail() == false {
            print("Cannot send Email in this devise.")
            return
        }
    }

}

