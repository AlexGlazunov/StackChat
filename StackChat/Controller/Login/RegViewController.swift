//
//  RegViewController.swift
//  StackChat
//
//  Created by Алексей Глазунов on 23.12.2021.
//

import UIKit

class RegViewController: UIViewController {
    var delegate: LoginViewControllerDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func closeVC(_ sender: Any) {
        delegate.closeVC()
    }
    //delegate//

}
