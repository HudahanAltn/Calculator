//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Hüdahan Altun on 29.01.2023.
//

import Foundation


class CalculatorLogic{
    
    
    var number:Double // we have a property to keep number which came from displayLabel( number come from numberButton to displayLabel
    
    
    init(number:Double){
        
        self.number = number
    }
     
    func calculate(symbol:String)->Double?{// created func to calculation and we have a return value
        
        switch symbol{// symbol come from calcButton method
            
        case "+/-":
            
           return number * -1 // set to negative or positive version
        
        case "AC":
            
            return 0 // display label set to 0
            
        case "%":
            
            return number * 0.01 // number divided by 100
            
        default:
            return nil
        }
        
      
    }
}
