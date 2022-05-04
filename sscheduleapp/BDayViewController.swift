//
//  BDayViewController.swift
//  sscheduleapp
//
//  Created by Jinsung Sagisaka on 5/2/22.
//

import UIKit

class BDayViewController: UIViewController, UITableViewDataSource {
 
    @IBOutlet weak var bdayTableView: UITableView!
    @IBOutlet weak var bDayTextField: UITextField!
    


   
    var list = [""]
    var listAday = ["1st Period", "2nd period", "3rd period", "4th period"]
    var listBday = ["5th period", "6th period", "7th period","8th period"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bdayTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            cell.textLabel?.text = list[indexPath.row]
            return cell
    }

    @IBAction func whenAddButtonPressed(_ sender: Any) {
    
    if let newItem = bDayTextField.text, bDayTextField.text != "" {
            list.append(newItem)
            bdayTableView.reloadData()
            bDayTextField.text = ""
        } else {
            
        }
        
    }
}
    

    
    
    
    
   

        
        
    
    


    
    
    



