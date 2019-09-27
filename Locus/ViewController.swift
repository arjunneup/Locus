//
//  ViewController.swift
//  Locus
//
//  Created by Arjun Neupane on 2019-09-22.
//  Copyright © 2019 Arjun Neupane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        if difference == 0 {
            score += points + 100
        }else if difference == 1{
            score += points + 50

        }
        else{
            score += points
        }
    
        let title: String
        let message: String
        if difference == 0{
            title = "Perfect, you have earned 100 bonus points"
            message = "You scored \(points + 100) points"
        }
        else if difference == 1{
            title = "Congrats, you have earned 50 bonus points"
            message = "You scored \(points + 50) points"
 
        }
        else if difference < 5 {
            title = "You almost had it"
            message = "You scored \(points) points"

        }else if difference < 10 {
            title = "Pretty Good !"
            message = "You scored \(points) points"

        }else{
            title = "Not even close"
            message = "You scored \(points) points"

        }
        
//        let message = "You scored \(points) points"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.startNewRound()
        })
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
    
    
    func startNewRound(){
        round += 1 //to increase rounds
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    @IBAction func startNewGame(_ sender: UIButton) {
        score = 0
        round = 0
        startNewRound()
    }
}
    


