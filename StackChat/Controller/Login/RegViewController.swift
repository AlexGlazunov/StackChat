//
//  RegViewController.swift
//  StackChat
//
//  Created by Алексей Глазунов on 23.12.2021.
//

import UIKit

class RegViewController: UIViewController {
    
    var delegate: LoginViewControllerDelegate!
    
    @IBOutlet var mainView: UIView!
    var tapGest: UIGestureRecognizer?
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var rePasswordField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapGest = UIGestureRecognizer(target: self, action: #selector(endEditing))
        mainView.addGestureRecognizer(tapGest!)
        
    }
    
    @IBAction func closeVC(_ sender: Any) {
        delegate.closeVC()
    }
    
    @objc func endEditing(){
        self.view.endEditing(true)
        
    }
    @IBAction func regBtnClick(_ sender: Any) {
    }
    
}
