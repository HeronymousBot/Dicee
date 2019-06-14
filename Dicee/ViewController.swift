//
//  ViewController.swift
//  Dicee
//
//  Created by Lorenzo Fonseca on 12/06/19.
//  Copyright © 2019 Lorenzo Fonseca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollEventButton(_ sender: UIButton) {
        rollDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
    func rollDice(){
        let dices : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        diceImage1.image = UIImage(named: dices[randomDiceIndex1])
        diceImage2.image = UIImage(named: dices[randomDiceIndex2])
    }
}


