//
//  Wage.swift
//  window-shopper
//
//  Created by 興寰 馬 on 2017/12/21.
//  Copyright © 2017年 興寰 馬. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        //forWage is name of parameter(參數), wage is name of variable
        return Int(ceil(price / wage))
    }
}
