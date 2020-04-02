//
//  ViewController.swift
//  Firebase Authentication
//
//  Created by Md Khaled Hasan Manna on 2/4/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var signInBtOutlet: UIButton!
    @IBOutlet weak var signUpBtnOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.fillButtonStyle(button: signInBtOutlet)
        Utilities.borderButtonStyle(button: signUpBtnOutlet)
      
    }

    @IBAction func signInBtnAction(_ sender: Any) {
        
        let logInVC = storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(logInVC, animated: true)
        
        
    }
    
    @IBAction func signUpBtnAction(_ sender: Any) {
        
        let signUpVC = storyboard?.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
        
    }
}


