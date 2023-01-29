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
    
    private var displayValue:Double{
        
        get{
            guard let number = Double(displayLabel.text!) else{
                
                fatalError("Cannot convert display label text to a Double")
            }
            
            return number
        }set{
            
            displayLabel.text = String(newValue)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        isFinishedTypingNumber = true // firstly,set true
      
      
    }

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true// user press calcbutton our variable set true,because calc will do
        
       
        
        if let calcMethod = sender.titleLabel?.text{// calcbutton decompose
            
            
            switch calcMethod{
                
            case "+/-":
                
                displayValue *= -1
            
            case "AC":
                
                displayLabel.text = String(0)
                
            case "%":
                displayValue *= 0.01
            default:
                break
            }

        }
        

    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.titleLabel?.text{
            
            print(numValue)
            if isFinishedTypingNumber{ // if it is true we have only just started
                
                displayLabel.text = numValue // writed current one number
                isFinishedTypingNumber = false //set to false because other numbers will come after
                
            }else{// if it is not there is a number before other numbers
               
                if numValue == "."{ //we checked decimal point
                    
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt{
                        
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
                
                
            }
            
            
        }else{
            
            print("button is not working")
        }
        
        
    }
    
}

