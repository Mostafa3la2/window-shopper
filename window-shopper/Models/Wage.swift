//
//  Wage.swift
//  window-shopper
//
//  Created by Mostafa Alaa on 7/19/18.
//  Copyright © 2018 Mostafa Alaa. All rights reserved.
//

import Foundation
class Wage{
    
    class func getHours(forWage wage: Double, andPrice price: Double)->Int{
        
        
        
        return Int(ceil(price/wage))
    }
    
}
