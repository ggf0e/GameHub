//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class Magic8BallViewController: UIViewController {
    
    @IBOutlet weak var ballValue: UIImageView!
    @IBOutlet weak var textFieldValue: UITextField!
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    
    @IBAction func tellButton(_ sender: UIButton) {
        if textFieldValue.text! != "" {
            ballValue.image = ballArray[Int.random(in: 0...4)]
            textFieldValue.text = ""
        }
    }
    
    



}


