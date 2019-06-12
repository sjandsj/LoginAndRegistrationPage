//
//  ViewController.swift
//  LoginOrRegistrationWithNAvigation
//
//  Created by mac on 11/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    @IBAction func loginButton(_ sender: Any) {
        let login:loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "loginViewController") as! loginViewController
        self.navigationController?.pushViewController(login, animated: true)
    }
    
    @IBAction func registrationButton(_ sender: Any) {
    }
}

