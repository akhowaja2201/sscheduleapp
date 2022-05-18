//
//  attendanceQuestionController.swift
//  sscheduleapp
//
//  Created by Jinsung Sagisaka on 5/16/22.
//

import UIKit

class attendanceQuestionController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    var questionList = ["Which fruit tastes the best?","what's your favorite breakfast food?","what's your favorite vegetable?","What is your favorite school lunch?","What did you eat for dinner last night?","what is your favorite chip brand?","In which school subject are you least interested?","what award are you most likely to receive?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func whenPickButtonPressed(_ sender: Any) {
        let randomNumber = arc4random_uniform(7)
        questionLabel.text = questionList[Int(randomNumber)]
        
    }
    
}
