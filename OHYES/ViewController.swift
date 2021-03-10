//
//  ViewController.swift
//  OHYES
//
//  Created by P.M. Student on 3/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLAbel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = Int(slider.value.rounded())
        startNewRound()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        
        
        
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        score += points
        
        let title: String
        if difference == 0 {
            title = "Ok"
        } else if difference < 5 {
            title = "You suck"
        }else if difference < 10 {
            title = "Sure"
        } else {
            title = "All right"
        }
        let message = "You scored \(points) points."
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction (title: "Close", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
        
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        
        currentValue = Int(slider.value.rounded())
        
        
    }
    
    func startNewRound() {
        round += 1
        
        
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLAbel.text = String(round)
    }
    
    
    @IBAction func restartGame() {
        round = 0
        score = 0
        
        
    }


}

