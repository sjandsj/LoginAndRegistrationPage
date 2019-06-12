//
//  loginViewController.swift
//  LoginOrRegistrationWithNAvigation
//
//  Created by mac on 11/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class loginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailtextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureReturnKey()
        configureTapGesture()
    }
    
    private func configureReturnKey() {
        emailtextField.delegate = self
        passwordTextField.delegate = self
    }
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(loginViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
    @IBAction func loginButton(_ sender: Any) {
        view.endEditing(true)
        messageLabel.text = ""
        
        if(emailtextField.text == "" || !(emailtextField.text?.isValidEmail)!) {
             messageLabel.text = "Invalid Email Address"
        } else if (passwordTextField.text == "") {
             messageLabel.text = "Invalid Password"
        } else {
             messageLabel.text = "LOGIN USER"
        }
    }
    
    @IBAction func goToRegisterationPage(_ sender: Any) {
        view.endEditing(true)
    }
}

extension String {
    
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with:self)
    }
    
    var isPasswordValid: Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        return passwordTest.evaluate(with:self)
    }
}

