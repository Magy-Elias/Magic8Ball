//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mickey Goga on 1/3/18.
//  Copyright © 2018 Magy Elias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallNumber : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomNumbers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        generateRandomNumbers()
    }
    
    func generateRandomNumbers() {
        randomBallNumber = Int(arc4random_uniform(5))
        print(randomBallNumber)
        ballImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            generateRandomNumbers()
        }
    }
}

