//
//  NewMessageViewController.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 03/07/2022.
//

import Foundation
import UIKit
import CLTypingLabel

class OnBoardViewController: UIViewController {

    
    @IBOutlet weak var messageIntroLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageIntroLabel.text = "Welcome to study smart arena where you learn fast and take practice questions. "
    }

    
    @IBAction func takeNoteButton(_ sender: UIButton) {
    }
    @IBAction func startQuizButton(_ sender: UIButton) {
        
//        let vc = storyboard?.instantiateViewController(withIdentifier: "Quiz") as! QuizViewController
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
    }
    
}

