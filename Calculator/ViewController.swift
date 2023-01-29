//
//  ViewController.swift
//  Calculator
//
//  Created by Hüdahan Altun on 28.01.2023.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!

    
    @IBOutlet weak var ACButton: UIButton!
    
    private var isFinishedTypingNumber:Bool = true //we created this variable to control printing text to the screen
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        isFinishedTypingNumber = true // firstly,set true
      
      
    }

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true// user press calcbutton our variable set true,because calc will do
        
        guard let number = Double(displayLabel.text!) else{
            
            fatalError("Cannot convert display label text to a Double")
        }
        
        if let calcMethod = sender.titleLabel?.text{// calcbutton decompose
            
            
            switch calcMethod{
                
            case "+/-":
                
                displayLabel.text = String(number * -1)
            
            case "AC":
                
                displayLabel.text = String(0)
                
            case "%":
                displayLabel.text = String(number/100)
                
            default:
                break
            }

        }
        

    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.titleLabel?.text{
            
            print(numValue)
            if isFinishedTypingNumber{ // if it is true we have only just started
                
                displayLabel.text = numValue
                isFinishedTypingNumber = false
                
            }else{// if it is not there is a number before
               
                displayLabel.text = displayLabel.text! + numValue
                
            }
            
            
        }else{
            
            print("button is not working")
        }
        
        
    }
    
}

