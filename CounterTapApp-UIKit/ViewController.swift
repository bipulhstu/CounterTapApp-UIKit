//
//  ViewController.swift
//  CounterTapApp-UIKit
//
//  Created by Bipul Islam on 15/7/25.
//

import UIKit

//CGFloat

//Challenge
//10 - bg color -> red
//20 - bg color -> blue
//30 - reset to 0 & set bg color to white



class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var changeCounterButton: UIButton!
    var currentNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        numberLabel.frame = CGRect(x: 0, y: numberLabel.frame.origin.y, width: view.frame.width, height: numberLabel.frame.height)
        //add the button 40 point away the from the origin of number label
        let changeCounterButtonYPos = numberLabel.frame.origin.y + numberLabel.frame.height + 40
        
        
        changeCounterButton.frame.origin = CGPoint(x: changeCounterButton.frame.origin.x, y: changeCounterButtonYPos)
    }

    @IBAction func changeCounterButtonTapped(_ sender: Any) {
        if(currentNumber + 1 > 30) {
            currentNumber = 0
            view.backgroundColor = UIColor.white
            numberLabel.text = "\(currentNumber)"
            return
        }
        
        currentNumber += 1
        numberLabel.text = "\(currentNumber)" // or String(currentNumber) //It is called string interpolation
        
        
        if currentNumber > 10 && currentNumber <= 20 {
            view.backgroundColor = UIColor.red
        }
        else if currentNumber > 20 && currentNumber <= 30 {
            view.backgroundColor = UIColor.blue
        }
    }
    
}

