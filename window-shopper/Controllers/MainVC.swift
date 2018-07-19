//
//  ViewController.swift
//  window-shopper
//
//  Created by Mostafa Alaa on 7/19/18.
//  Copyright © 2018 Mostafa Alaa. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageText: customTextField!
    @IBOutlet weak var priceText: customTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn=UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor=#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calcBtn
        priceText.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate(){
        if let wageText=wageText.text, let priceText=priceText.text{
            
            resultLbl.text="\(Wage.getHours(forWage: Double(wageText)!, andPrice: Double(priceText)!))"
            view.endEditing(true)
            resultLbl.isHidden = false
            hoursLbl.isHidden = false
        }
        
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageText.text = ""
        priceText.text = ""
    }
    
}

