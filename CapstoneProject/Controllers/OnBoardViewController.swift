//
//  NewMessageViewController.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 03/07/2022.
//

import Foundation
import UIKit
import CLTypingLabel
import FirebaseAuth

class OnBoardViewController: UIViewController {

    
    @IBOutlet weak var messageIntroLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageIntroLabel.text = "Welcome to study smart arena where you learn fast and take practice questions. "
    }

    
    @IBAction func takeNoteButton(_ sender: UIButton) {
        
    }
    
    @IBAction func startQuizButton(_ sender: UIButton) {
        performSegue(withIdentifier: "quizView", sender: self)
        
    }
    @IBAction func logoutButton(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            navigationController?.popViewController(animated: true)
            
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
    
}

