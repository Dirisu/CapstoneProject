//
//  SideMenuViewController.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 06/07/2022.
//

import Foundation
import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

//class SideMenuViewController: UIViewController {
//
//    @IBOutlet weak var menuTableView: UITableView!
//
//
//}
//
//extension SideMenuViewController: UITableViewDelegate, UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return options.count
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! tableViewCell
//        cell.backgroundColor = .clear
//        cell.descriptionLabel.text = options[indexPath.row].title
//        cell.descriptionLabel.textColor = #colorLiteral(red: 0.6461477876, green: 0.6871469617, blue: 0.6214019656, alpha: 1)
//        return cell
//
//    }
//
//    /* optional: animation for selected rows and segue perform
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        if let indexPath = tableView.indexPathForSelectedRow {
//            let currentCell = (tableView.cellForRow(at: indexPath) ?? UITableViewCell()) as UITableViewCell
//
//            currentCell.alpha = 0.5
//            UIView.animate(withDuration: 1, animations: {
//                currentCell.alpha = 1
//
//            })
//
//            self.parent?.performSegue(withIdentifier: options[indexPath.row].segue, sender: self)
//
//        }
//
//    } */
//
//}
