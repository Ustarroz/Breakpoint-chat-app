//
//  LoginVC.swift
//  breakpoint
//
//  Created by robin ustarroz on 03/11/2017.
//  Copyright © 2017 robin ustarroz. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: insetTextField!
    @IBOutlet weak var passwordField: insetTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }

    @IBAction func signInButtonWasPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(email: emailField.text!, password: passwordField.text!, loginCreationComplete: { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                }
                else {
                    print(String(describing: loginError?.localizedDescription))
                }
                AuthService.instance.registerUser(email: self.emailField.text!, password: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    if success {
                        AuthService.instance.loginUser(email: self.emailField.text!, password: self.passwordField.text!, loginCreationComplete: { (success, nil) in
                            self.dismiss(animated: true, completion: nil)
                        })
                    } else {
                        print(String(describing: registrationError?.localizedDescription))
                    }
                })
            })
            }
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}

extension LoginVC: UITextFieldDelegate {
    
}
