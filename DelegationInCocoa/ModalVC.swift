//
//  ModalVC.swift
//  DelegationInCocoa
//
//  Created by shabib hossain on 11/2/16.
//  Copyright © 2016 CodeWithShabib. All rights reserved.
//

import UIKit

protocol ModalVCDelegate {
    func modalVCDidSendMessage(message: String)
}

class ModalVC: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    var delegate: ModalVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendAction(_ sender: Any) {
        if (delegate != nil) && textField.text != "" {
            delegate?.modalVCDidSendMessage(message: textField.text!)
            self.dismiss(animated: true, completion: nil)
        }
    }
}
