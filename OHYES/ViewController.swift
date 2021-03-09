//
//  ViewController.swift
//  OHYES
//
//  Created by P.M. Student on 3/8/21.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello World", message: "This is my first UIKit App", preferredStyle: .alert)
        
        let action = UIAlertAction (title: "Close", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
    }


}

