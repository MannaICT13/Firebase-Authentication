//
//  SignUpViewController.swift
//  Firebase Authentication
//
//  Created by Md Khaled Hasan Manna on 2/4/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var PasswordAgainTextField: UITextField!
    
    @IBOutlet weak var signUpBtnOutlet: UIButton!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func signUpBtnAction(_ sender: Any) {
        
        guard let email = emailTextField.text else {
            return
        }
        guard let pw1 = passwordTextField.text else {
            return
        }
        guard let pw2 = PasswordAgainTextField.text else {
            return
        }
        
        if pw1 != pw2{
            
            print("Password Not Matched!")
        }else{
             DbHelper.dbInstance.createSignUp(email: email, password: pw1)
        }
        
       
        
        
        
        
        
        
        
        
    }
    
   

}
