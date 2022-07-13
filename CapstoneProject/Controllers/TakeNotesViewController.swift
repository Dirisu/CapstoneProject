//
//  SelectMessageViewController.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 03/07/2022.
//

import Foundation
import UIKit

class TakeNotesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var models : [Models] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        title = "Notes"
        
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].note
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let model = models[indexPath.row]
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "note") as? SaveNoteViewController else {
            
            return
        }
        vc.title = "Note"
        vc.noteTitle = model.title!
        vc.note = model.note!
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func addNoteButton(_ sender: UIBarButtonItem) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "new") as? NoteViewController else {
            
            return
    }
        
        vc.title = "New Note"
        vc.completion = { noteTitle, note in
            self.navigationController?.popViewController(animated: true)
            self.models.append(models)
            self.tableView.isHidden = true
            self.tableView.isHidden = false
            self.tableView.reloadData()
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}


