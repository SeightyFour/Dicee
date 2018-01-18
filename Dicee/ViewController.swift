//
//  ViewController.swift
//  Dicee
//
//  Created by Mário Rodrigues on 28/11/2017.
//  Copyright © 2017 Mário Rodrigues. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var randomDice1Index: Int = 0
	var randomDice2Index: Int = 0
	let diceArray = ["dice1", "dice2","dice3","dice4","dice5", "dice6"]
	
    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
	
    
    override func viewDidLoad() {
        super.viewDidLoad()
		updateDiceImages()
    }

    @IBAction func rollButton(_ sender: UIButton) {
		updateDiceImages()
    }
	
	func updateDiceImages(){
		randomDice1Index = Int(arc4random_uniform(6))
		randomDice2Index = Int(arc4random_uniform(6))
		
		dice1ImageView.image = UIImage(named: diceArray[randomDice1Index])
		dice2ImageView.image = UIImage(named: diceArray[randomDice2Index])
	}
	
	override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
		updateDiceImages()
	}
    
}


