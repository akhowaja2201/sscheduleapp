//
//  ViewController.swift
//  sscheduleapp
//
//  Created by Alisaad Khowaja on 4/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var aDayClassTextView: UITextField!
    @IBOutlet weak var aDayTableView: UITableView!

    var list = [""]
    var listAday = ["1st Period", "2nd period", "3rd period", "4th period"]
    var listBday = ["5th period", "6th period", "7th period","8th period"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aDayTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            cell.textLabel?.text = list[indexPath.row]
            return cell
    }
    @IBAction func whenClassAddButtonPressed(_ sender: Any) {
        if let newItem = aDayClassTextView.text, aDayClassTextView.text != "" {
            list.append(newItem)
            aDayTableView.reloadData()
            aDayClassTextView.text = ""
        } else {
            
        }
        
    }
    
    
}

