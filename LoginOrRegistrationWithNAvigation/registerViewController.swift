//
//  registerViewController.swift
//  LoginOrRegistrationWithNAvigation
//
//  Created by mac on 11/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class registerViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var enterYourName: UITextField!
    @IBOutlet weak var enterYourEmail: UITextField!
    @IBOutlet weak var enterYourNumber: UITextField!
    @IBOutlet weak var enterYourAge: UITextField!
    @IBOutlet weak var enterYourCity: UITextField!
    @IBOutlet weak var enterYourPassword: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var scrollView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)

        return true
    }
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(registerViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
    view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func createMyAccountButton(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    @IBAction func goToLoginPageButton(_ sender: Any) {
        view.endEditing(true)
    }
}
