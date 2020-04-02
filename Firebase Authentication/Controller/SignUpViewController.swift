//
//  SignUpViewController.swift
//  Firebase Authentication
//
//  Created by Md Khaled Hasan Manna on 2/4/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
class SignUpViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var PasswordAgainTextField: UITextField!
    
    @IBOutlet weak var signUpBtnOutlet: UIButton!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.fillButtonStyle(button: signUpBtnOutlet)

       
    }
    
    @IBAction func signUpBtnAction(_ sender: Any) {
        
        guard let email = emailTextField.text else {return}
        guard let pw1 = passwordTextField.text else {return}
        guard let pw2 = PasswordAgainTextField.text else {return}
        
        if pw1 != pw2{
            
           // print("Password Not Matched!")
            self.alertDialouge(title: "Error Message!", msg: "Password Not Matched")
            
        }else{
            
            signUp(email: email, password: pw1)
        //    self.navigationController?.popViewController(animated: true)
            self.emailTextField.text?.removeAll()
            self.passwordTextField.text?.removeAll()
            self.PasswordAgainTextField.text?.removeAll()
        }
        
       
        
        
        
        
        
        
        
        
    }
    
   

}
extension SignUpViewController{
    
    
    
    private var authUser : User?{
        
        return Auth.auth().currentUser
    }
    
    
    func emailVerification(){
        
        if authUser != nil && !authUser!.isEmailVerified{
            
            authUser?.sendEmailVerification(completion: { (error) in
              
                if let err = error{
                    
                    //print("\(err.localizedDescription)")
                    self.alertDialouge(title: "Error Message!", msg: err.localizedDescription)
                }
                else{
                    
                   // print("Successfully send Verification link")
                    self.alertDialouge(title: "Alert Message!", msg: "Successfully send Verification link.Please check email.")
                    
                }
            })
            
        }
        
        
    }
    
    
    func signUp(email: String,password:String){
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            if let err = error{
                //print("\(err.localizedDescription)")
                self.alertDialouge(title: "Error Message!", msg: err.localizedDescription)
                
            }else{
                
                  self.emailVerification()
                  
            }
            
            
            
        }
        
        
        
        
    }
    
    
    
}

extension SignUpViewController{
    
    func  alertDialouge(title :String,msg: String){
    
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
    
    }
    
    
}
