//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by 興寰 馬 on 2017/12/21.
//  Copyright © 2017年 興寰 馬. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) { //never use super on draw, and never leave it empty
        let size: CGFloat = 20 //default is Double, but it must be in Float
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.9342917433, green: 0.9342917433, blue: 0.9342917433, alpha: 0.7984803082)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true //draw(_rect)會讓先前設定的圓角失效，要加入這行才能解決
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency //NumberFormatter會讓金錢符號依據.currency自動調整
        formatter.locale = .current  //set by default, didn't really have to do this line
        currencyLbl.text = formatter.currencySymbol //grab the symbol and give a string back
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() { //when app runs, it will run this code.
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2546286387)
        layer.cornerRadius = 5 //round corner
        textAlignment = .center
        
        clipsToBounds = true //上面的draw(_rect)讓圓角失效，加入這行解決
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place  //override the placeholder and replace with place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
