//
//  SignUpViewController.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 03/07/2022.
//

import Foundation
import UIKit
import FirebaseAuth

class SignUpMessageViewController: UIViewController {
    
    
    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButton(_ sender: UIButton) {
        
        if let email =  emailTextField.text, let password = passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                
                if let error = error {
                    
                    print(error.localizedDescription)
                // segue to the welcome screen
                } else {
                    
                    self.performSegue(withIdentifier: "SignUp", sender: self)
                    
                }
            }
        }
        
    }
    
}

