//
//  LoginViewController.swift
//  Firebase Authentication
//
//  Created by Md Khaled Hasan Manna on 2/4/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInBtnOutlet: UIButton!
    @IBOutlet weak var forgotPwOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func signInBtnAction(_ sender: Any) {
        
        guard let email = emailTextField.text else {
            return
        }
        
        guard let pw = passwordTextField.text else {
            return
        }
        
        DbHelper.dbInstance.createSignIn(email: email, password: pw)
        
        
    }
    
    @IBAction func forgotPwBtnAction(_ sender: Any) {
    }
    

}
