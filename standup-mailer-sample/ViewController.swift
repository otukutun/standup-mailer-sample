//
//  ViewController.swift
//  standup-mailer-sample
//
//  Created by otukutun on 11/29/16.
//  Copyright © 2016 otukutun. All rights reserved.
//

import UIKit
import MessageUI
import SafariServices

class ViewController: UIViewController, MFMailComposeViewControllerDelegate, SFSafariViewControllerDelegate {

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
            
            let _url:NSURL = NSURL(string: "otukutun.hatenablog.com")!
            let brow = SFSafariViewController(url: _url as URL, entersReaderIfAvailable: true)
            brow.delegate = self
            present(brow, animated: true, completion: nil)
            return
        }
    }

}

