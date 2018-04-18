//
//  ViewController.swift
//  Concentration
//
//  Created by Cumali Han on 16.04.2018.
//  Copyright © 2018 Cumali Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips : \(flipCount) "
        }
        
    }
    @IBOutlet weak var flipCountLabel: UILabel!
    
   
    @IBOutlet var cardButtons: [UIButton]!
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton)  {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            flipcard(withEmoji: emojiChoices[cardNumber], on: sender)
        }else{
        print("Chosen Card Was Not in cardButtons")
        }
       
     
    }
    func flipcard(withEmoji emoji: String, on button : UIButton){
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
    }
    
}

