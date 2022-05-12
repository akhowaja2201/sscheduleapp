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
    
    var data = [" "]
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = customTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    @IBAction func whenAddButtonPressed(_ sender: Any) {
        if let newItem = customTextField.text, customTableView.text != "" {
                data.append(newItem)
                customTableView.reloadData()
                customTextField.text = ""
            } else {
                
            }
        
        
    }

}
