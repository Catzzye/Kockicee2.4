//
//  ViewController.swift
//  Kockicee2.4
//
//  Created by Norman Podgorsek on 02/04/2018.
//  Copyright © 2018 Norman Podgoršek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6", ]
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    func updateDiceImages() {
        
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        switch(randomDiceIndex1){
        case 0: label1.text = "1";
        case 1: label1.text = "2";
        case 2: label1.text = "3";
        case 3: label1.text = "4";
        case 4: label1.text = "5";
        case 5: label1.text = "6";
        default: label1.text = "GREŠKA!"
        }
        
        switch(randomDiceIndex2){
        case 0: label2.text = "1";
        case 1: label2.text = "2";
        case 2: label2.text = "3";
        case 3: label2.text = "4";
        case 4: label2.text = "5";
        case 5: label2.text = "6";
        default: label2.text = "GREŠKA!"
        }
        
        print(randomDiceIndex1 + 1)
        print(randomDiceIndex2 + 1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    
    
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    
    
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateDiceImages()
        }
        
    }
    
    
    
    

    
    
    
}

