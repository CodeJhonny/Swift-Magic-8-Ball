//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jhonatan Cohen on 16/12/2017.
//  Copyright © 2017 SideCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewAnswer: UIImageView!
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func askBtnPressed(_ sender: UIButton) {
        updateBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
    func updateBall() {
        randomBallNumber = Int(arc4random_uniform(5)) + 1
        ImageViewAnswer.image = UIImage(named: "ball\(randomBallNumber)")

    }
    
}

