//
//  ViewController.swift
//  First IOS Project
//
//  Created by Abdullah Jacksi on 3/9/19.
//  Copyright © 2019 Abdullah Jacksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let GoalNumber = 2...99
    var RoundNumber : Int = 1
    
    @IBOutlet weak var MyGoal: UILabel!
    @IBOutlet weak var MyScore: UILabel!
    @IBOutlet weak var MyRound: UILabel!
    @IBOutlet weak var MySlider: UISlider!
    
    
    @IBAction func HitMeButton(_ sender: UIButton) {
        // make Goal Number random
        let TextGoalNumber = GoalNumber.randomElement()!
        MyGoal.text = String(TextGoalNumber)
        // make Round Number incrase
        RoundNumber = RoundNumber + 1
        MyRound.text = String (RoundNumber)
        
        if TextGoalNumber == Int(MySlider.value){
            let alert = UIAlertController(title: "Great", message: "You Hit it!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok!", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            if Int(MyScore.text!) == 0 {
                MyScore.text = String(200)
            }else{MyScore.text = String(Int(MyScore.text!)! + 200)}
            
        }else if TextGoalNumber != Int(MySlider.value){
            let alert = UIAlertController(title: "Opps", message: "Try again! \(Int(MySlider.value))", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok!", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            if Int(MyScore.text!) != 0 {
                MyScore.text = String(Int(MyScore.text!)! - 50)
                
            }else{MyScore.text = String(0)}
        }
        
    }
    
    @IBAction func RestButton(_ sender: UIButton) {
        MyGoal.text = String(50)
        MyRound.text = String(1)
        MyScore.text = String(0)
        MySlider.value = 50
    }
    
    @IBAction func InfoButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "More info", message: "our youtube channel is playground to challenge each other => learn from chalenge each other!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok!", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyGoal.text = String(50)
        MyRound.text = String(1)
        MyScore.text = String(0)
    }


}

