//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Олег Комисаренко on 24.06.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var currentBMI: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case 0..<18.5:
            currentBMI = BMI(value: bmiValue, advice: "Eat more my friend", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        case 18.5..<24.9:
            currentBMI = BMI(value: bmiValue, advice: "You are Ok!", color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
        default:
            currentBMI = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
    }
    
    func getBMI() -> String {
        let bmiTo1Decimal = String(format: "%.1f", currentBMI?.value ?? "0.0")
        return bmiTo1Decimal
    }
    
    func getAdvice() -> String {
        let advice = currentBMI?.advice ?? ""
        return advice
    }
    
    func getColor() -> UIColor {
        let color = currentBMI?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return color
    }
}
