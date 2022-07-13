//
//  NoteViewController.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 13/07/2022.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class NoteViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var noteTextArea: UITextView!
    
    let db = Firestore.firestore()
    
    
    public var completion: ((String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        loadNotes()
        
        titleTextField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
    }
    
    @objc func didTapSave(){
        
        if let text = titleTextField.text, !text.isEmpty, let note = noteTextArea.text, !note.isEmpty {

            completion?(text, noteTextArea.text)

            db.collection(titleTextField.text!).addDocument(data: [text : titleTextField.text!, note : noteTextArea.text!]) { (error) in

                if let e = error {
                    print("error \(e)")
                } else {
                    print("saved")
                }


            }
        
        
    }
    
    func loadNotes() {
        db.collection(titleTextField.text!).getDocuments { (querySnapshot, error) in
            if let e = error {
                print("issue retriving data \(e)")
            } else {
                if let snapshotDocuments = querySnapshot?.documents {
                    for doc in snapshotDocuments {
                        print(doc.data())
                    }
                }
            }
        }
    }
    
}
}
