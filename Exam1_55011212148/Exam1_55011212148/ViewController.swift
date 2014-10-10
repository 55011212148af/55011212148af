//
//  ViewController.swift
//  Exam1_55011212148
//
//  Created by Student on 10/10/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var name : String
    var volume : Double
    var Price : Double
    var Totol : Double
    
    init(volume:Double,Price:Double){
        self.volume = volume
        self.Price = Price
        Totol = volume / (Price + 1)
    }
    
    var tipCalc = TipCalculatorModel(total: 33.25,  taxPct: 0.06)
    var possibleTips = Dictionary<Int, (tipAmt:Double, total:Double)>()
    var sortedKeys:[Int] = []
    
    
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textfield2: UITextField!
    
    @IBOutlet var textfield3: UITextField!
    @IBAction func ButtonTotal(sender: AnyObject) {
        tipCalc.total  = Double((textField1.text as NSString).doubleValue)
         var possibleTips = tipCalc.returnPossibleTips()
         var sortedKeye = (Array(possibleTips.keys))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func refreshUI(){
        textField1.text = String(format: "%0.2f",tipCalc.total)
        textfield2.text = String(format: "%0.2f",tipCalc.total )
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

