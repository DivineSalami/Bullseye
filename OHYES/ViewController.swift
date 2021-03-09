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
    
    @IBOutlet weak var slider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = Int(slider.value.rounded())
        startNewRound()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        
        let message = "The value of the sldier is now \(currentValue)" + "\nThe Target Value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction (title: "Close", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
        
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        
        
        print("the value of the slider is now: \(slider.value)")
        currentValue = Int(slider.value.rounded())
        
        
    }
    
    func startNewRound() {
        
        
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        
        
    }


}

