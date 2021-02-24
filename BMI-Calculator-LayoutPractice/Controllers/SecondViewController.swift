//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Олег Комисаренко on 22.06.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet var mainView: UIView!
    
    var receivedBMI: String?
    var receivedAdvice: String?
    var receivedColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let bmi = receivedBMI else { return }
        bmiLabel.text = bmi
        
        guard let advice = receivedAdvice else { return }
        adviceLabel.text = advice
        
        guard let color = receivedColor else { return }
        mainView.backgroundColor = color
    }
    
    @IBAction func recalculateBMI(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
