//
//  TipCalculator.swift
//  TipCalculater
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import Foundation
class TipCalculatorModel {
    //2
    var total : Double
    var taxPct : Double
    var subtotal : Double
    
    //3
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    //4
    func calcTipWithTipPct(tipPct:Double) -> (tipAmt: Double, total: Double){
        let tipAmt = subtotal * tipPct
        let finalTotal = total + tipAmt
        return (tipAmt, finalTotal)
    }
    //1
    func returnPossibleTips() -> [Int: (tipAmt: Double, total: Double)]{
        
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
        
        var retval = Dictionary<Int, (tipAmt:Double, total:Double)>()
        
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }

}
//6

