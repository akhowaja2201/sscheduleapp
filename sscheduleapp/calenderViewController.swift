//
//  calenderViewController.swift
//  sscheduleapp
//
//  Created by Jinsung Sagisaka on 5/6/22.
//

import UIKit

class calenderViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet weak var calendarTableView: UITableView!
    @IBOutlet weak var eventTextField: UITextField!
    @IBOutlet weak var dayTextField: UITextField!
    
    var week = ["Monday:", "Tuesday:", "Wednesday:", "Thursday:", "Friday:"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func whenApplyButtonPressed(_ sender: Any) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return week.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = calendarTableView.dequeueReusableCell(withIdentifier: "calendarCell", for: indexPath)
        cell.textLabel?.text = week[indexPath.row]
        return cell
    }
    
}
