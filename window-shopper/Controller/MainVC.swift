//
//  ViewController.swift
//  window-shopper
//
//  Created by 興寰 馬 on 2017/12/21.
//  Copyright © 2017年 興寰 馬. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) //always use .setTitle, not .title
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        //can also do
        //Selector("calculate")  but if calculate doesn't exist, it crashes
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }
    
    @objc func calculate() {
        print("We are here")
    }
    
}

