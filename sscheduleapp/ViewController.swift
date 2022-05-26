//
//  ViewController.swift
//  sscheduleapp
//
//  Created by Alisaad Khowaja on 4/26/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var aDayClassTextView: UITextField!
    @IBOutlet weak var aDayTableView: UITableView!

    var list = [""]
    var listAday = ["1st Period", "2nd period", "3rd period", "4th period"]
    var listBday = ["5th period", "6th period", "7th period","8th period"]
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aDayTableView.dataSource = self
        if let player = player, player.isPlaying {
            player.stop()
        } else {
            let urlString = Bundle.main.path(forResource: "San fantastico", ofType: "mp3")
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                player.play()
            }
            catch{
                print("something went wrong")
            }
        }
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

