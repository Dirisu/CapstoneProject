//
//  SignInViewController.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 03/07/2022.
//

import Foundation
import UIKit
import FirebaseAuth

class SignInMessageViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInButton(_ sender: UIButton) {
        
        if let email =  emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                
                if let error = error {
                    
                    print(error.localizedDescription)
                // segue to the welcome screen
                } else {
                    
                    self.performSegue(withIdentifier: "SignIn", sender: self)
                    
                }
            }
                
        }
    }
    
}

