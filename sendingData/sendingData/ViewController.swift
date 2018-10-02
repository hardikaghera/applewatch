//
//  ViewController.swift
//  sendingData
//
//  Created by hardik aghera on 02/10/18.
//  Copyright © 2018 hardikaghera2306. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {
    
    @IBOutlet weak var messageTextField: UITextField!
    let wcSession = WCSession.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
       wcSession.delegate = self
       wcSession.activate()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    @IBAction func sendBtnTapped(_ sender: Any) {
        let message = ["message": messageTextField.text!]
        
        wcSession.sendMessage(message, replyHandler: nil, errorHandler: { error in
            print(error.localizedDescription)
            })
    }
    
}

