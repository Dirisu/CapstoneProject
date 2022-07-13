//
//  SaveNoteViewController.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 13/07/2022.
//

import UIKit

class SaveNoteViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var noteText: UITextView!
    
    
    public var noteTitle : String = ""
    public var note : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel?.text = noteTitle
        noteText.text = note
    }
    
}

