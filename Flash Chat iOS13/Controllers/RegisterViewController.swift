//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
//        guard let userEmail = emailTextfield.text else { return }
//        guard let userPassword = passwordTextfield.text else { return }
        
        if let userEmail = emailTextfield.text, let userPassword = passwordTextfield.text{
            Auth.auth().createUser(withEmail: userEmail, password: userPassword) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    //Navigate to ChatVC
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
            }
        }
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "RegisterToChat" {
//            var chatVC = segue.destination as! ChatViewController
//        }
//    }
}
