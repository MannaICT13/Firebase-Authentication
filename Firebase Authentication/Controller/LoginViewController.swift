//
//  LoginViewController.swift
//  Firebase Authentication
//
//  Created by Md Khaled Hasan Manna on 2/4/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInBtnOutlet: UIButton!
    @IBOutlet weak var forgotPwOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func signInBtnAction(_ sender: Any) {
        
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}

        login(email: email, password: password)
        
        
        
    }
    
    @IBAction func forgotPwBtnAction(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Forgot PassWord!!", message: "You want to reset password?", preferredStyle: .alert)
        alertController.addTextField { (emailTxt) in
            emailTxt.placeholder = "Enter your Email"
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancel)
        let reset = UIAlertAction(title: "Reset", style: .default) { (resetAction) in
            
            guard let email = alertController.textFields![0].text else{return}
            self.forgotPassword(email: email)
            self.navigationController?.popViewController(animated: true)
            
            
        }
        alertController.addAction(reset)
        
        self.present(alertController, animated: true, completion: nil)
        
      
    }
    
    

}


extension LoginViewController {
    
    
    
    func login(email:String,password:String){
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if let err = error{
               // print("\(err.localizedDescription)")
                self.alertDialouge(title: "Error Message!", msg: err.localizedDescription)
                return
                
            }else{
                if result != nil && !Auth.auth().currentUser!.isEmailVerified{
                    
                    //print("Already send verification code plseae check")
                    self.alertDialouge(title: "Alert Message!", msg: "Already send verification code plseae check")
                    
                }else{
                    
                    
                    let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
                    self.navigationController?.pushViewController(homeVC, animated: true)
                }
            }
            
            
        }
        
        
    }
    
    
    
    func forgotPassword(email: String){
        
        Auth.auth().sendPasswordReset(withEmail: email) { (error) in
            
            if let err = error{
                
              //  print("\(err.localizedDescription)")
                self.alertDialouge(title: "Error Message", msg: err.localizedDescription)
                return
            }else{
                
              //  print("Check your email")
                self.alertDialouge(title: "Alert Message", msg: "Check your email")
            }
        }
        
        
        
        
    }
    
    
    
    
    
}


extension LoginViewController{
    
    
    func alertDialouge(title: String,msg: String){
        
        
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    
}


