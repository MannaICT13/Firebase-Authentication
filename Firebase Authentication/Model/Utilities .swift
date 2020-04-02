//
//  Utilities .swift
//  Firebase Authentication
//
//  Created by Md Khaled Hasan Manna on 2/4/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation
import UIKit
class Utilities{
    
    
   static func fillButtonStyle(button :UIButton){
        
        button.backgroundColor = UIColor.init(displayP3Red: 44/255, green: 88/255, blue: 160/255, alpha: 1.0)
   
         button.layer.borderWidth = 2.0
    button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 20.0
    }
  static func borderButtonStyle(button: UIButton){
        
             
               button.layer.borderWidth = 2.0
    button.layer.borderColor = UIColor.black.cgColor
              button.layer.cornerRadius = 20.0
    
    }
    
    
    
    
    
    
    
}
