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
        
        let alertController = UIAlertController(title: "Forgot PassWord!!", message: "You want reset password?", preferredStyle: .alert)
        alertController.addTextField { (emailTxt) in
            emailTxt.placeholder = "Enter your Email"
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancel)
        let reset = UIAlertAction(title: "Reset", style: .default) { (resetAction) in
            
            guard let email = alertController.textFields![0].text else{return}
            DbHelper.dbInstance.ForgotPassword(email: email)
            
            
            
        }
        alertController.addAction(reset)
        
        self.present(alertController, animated: true, completion: nil)
        
      
    }
    
    

}



