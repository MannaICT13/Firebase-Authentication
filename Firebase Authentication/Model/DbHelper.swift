//
//  DbHelper.swift
//  Firebase Authentication
//
//  Created by Md Khaled Hasan Manna on 2/4/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import FirebaseAuth
import Firebase

class DbHelper{
    
    
    static let dbInstance = DbHelper()
    
    
    
    //for email link verification
    
/*    private var authUser :User?{
        return Auth.auth().currentUser
    }
    
    
    
    func emailVerification(){
        
        if self.authUser != nil && !self.authUser!.isEmailVerified{
            
            self.authUser?.sendEmailVerification(completion: { (error) in
                
                if let err = error {
                    print("\(err.localizedDescription)")
                }else{
                    print("Send Verification Code....")
                }
            })
            
            
        }
        
        
        
    }
    
    
    
    
    
  func createSignUp(email : String ,password : String){
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            if let err = error{
                print("\(err.localizedDescription)")
            }
            else{
                
                self.emailVerification()
            }
            
            
            
        }
        
        
        
        
        
    }

  
    
    
    func createSignIn(email: String,password:String){
        
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if let err = error{
                
                print("\(err.localizedDescription)")
                return
            }else{
               
                if result != nil && !self.authUser!.isEmailVerified{
                    
                    print("Already send verification code plseae check")
                    
                }else{
                    
                    print("Successfully login....")
                }
               
            }
        }
        
        
        
    }
    

    
    func ForgotPassword(email:String){
        
        Auth.auth().sendPasswordReset(withEmail: email) { (error) in
            
            if let err = error{
                print("\(err.localizedDescription)")
            }else{
                print("Send email ......")
            }
            
        }
    }
    
    
    
    
    */
    
    
    
    
    
    
    
    
    
}
