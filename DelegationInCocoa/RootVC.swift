//
//  RootVC.swift
//  DelegationInCocoa
//
//  Created by shabib hossain on 11/2/16.
//  Copyright © 2016 CodeWithShabib. All rights reserved.
//

import UIKit

class RootVC: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ModalSeague" {
            let modalVC: ModalVC = segue.destination as! ModalVC
            modalVC.delegate = self
        }
    }
}

extension RootVC: ModalVCDelegate {
    
    func modalVCDidSendMessage(message: String) {
        displayLabel.text = message
    }
}
