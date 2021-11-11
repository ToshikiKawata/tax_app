//
//  addViewController.swift
//  tax_app
//
//  Created by 川田俊希 on 2021/11/11.
//

import UIKit

class addViewController: UIViewController {

    
    var resultArray:[Double] = []
    var sum:Double = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultArray = UserDefaults.standard.object(forKey: "item") as! [Double]
        print(resultArray)
        sum = resultArray.reduce(0) { (num1:Double, num2:Double) -> Double in
            return num1 + num2
        }
        
        resultLabel.text = String(format: "%.0f", sum)
    }
    

}
