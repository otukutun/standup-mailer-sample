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
        
        // ref: http://qiita.com/kobaboy/items/60a2f44ad53675cfa0ae
        let mailViewController = MFMailComposeViewController()
        let toRecipients = ["to@example.com"] //Toのアドレス指定
        let CcRecipients = ["cc@exaple.com","Cc2@exaple.com"] //Ccのアドレス指定
        let BccRecipients = ["Bcc@1gmail.com","Bcc2@exaple.com"] //Bccのアドレス指定
        
        mailViewController.mailComposeDelegate = self
        mailViewController.setSubject("メールの件名")
        mailViewController.setToRecipients(toRecipients) //Toアドレスの表示
        mailViewController.setCcRecipients(CcRecipients) //Ccアドレスの表示
        mailViewController.setBccRecipients(BccRecipients) //Bccアドレスの表示
        mailViewController.setMessageBody("メールの本文", isHTML: false)
        self.present(mailViewController, animated: true, completion: nil)
    }

}

