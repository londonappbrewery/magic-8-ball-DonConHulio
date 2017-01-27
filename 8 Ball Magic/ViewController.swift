//
//  ViewController.swift
//  8 Ball Magic
//
//  Created by Alexander Bochert on 25.01.17.
//  Copyright © 2017 innogy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallIndex1 : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballImageView1: UIImageView!
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    func updateBallImage (){
        
        randomBallIndex1 = Int(arc4random_uniform(5))
        ballImageView1.image = UIImage(named: ballArray[randomBallIndex1])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

