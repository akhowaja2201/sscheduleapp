//
//  customScheduleViewController.swift
//  sscheduleapp
//
//  Created by Jinsung Sagisaka on 5/10/22.
//

import UIKit

class customScheduleViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var customTableView: UITableView!
    @IBOutlet weak var customTextField: UITextField!
    
    var list = [" "]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        customTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = customTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    @IBAction func whenAddButtonPressed(_ sender: Any) {
        if let newItem = customTextField.text, customTextField.text != "" {
                list.append(newItem)
                customTableView.reloadData()
                customTextField.text = ""
            } else {
                
            }
    }
}
