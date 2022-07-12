//
//  SelectMessageViewController.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 03/07/2022.
//

import Foundation
import UIKit

class TakeNotesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var advice: [AdviceSlipResponse] = []
//
//    private let networkManager = NetworkManager()
    
    var healthCategory = ["FOOD", "SLEEP", "EXERCISE", "REST"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return healthCategory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath)
        
        cell.textLabel?.text = healthCategory[indexPath.row]
        
        return cell
    }
 
}
