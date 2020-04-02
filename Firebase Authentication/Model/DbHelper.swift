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
    
    
    
    func createSignUp(email : String ,password : String){
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            if let err = error{
                print("\(err.localizedDescription)")
            }
            else{
                
                print("Successfully created Auth")
            }
            
            
            
        }
        
        
        
        
        
    }
    
    func createSignIn(email: String,password:String){
        
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if let err = error{
                
                print("\(err.localizedDescription)")
                return
            }else{
                print("Successfully login.......")
            }
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
