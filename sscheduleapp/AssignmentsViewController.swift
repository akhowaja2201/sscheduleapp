//
//  AssignmentsViewController.swift
//  sscheduleapp
//
//  Created by Jinsung Sagisaka on 5/2/22.
//

import UIKit

class AssignmentsViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var assignmentTextField: UITextField!
    @IBOutlet weak var assignmentTableView: UITableView!
    var list = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        assignmentTableView.dataSource = self
        
    }
    @IBAction func whenAddAssignmentPressed(_ sender: Any) {
        if let newItem = assignmentTextField.text, assignmentTextField.text != "" {
                list.append(newItem)
                assignmentTableView.reloadData()
                assignmentTextField.text = ""
            } else {
                
            }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = assignmentTableView.dequeueReusableCell(withIdentifier: "assignmentCell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
}
