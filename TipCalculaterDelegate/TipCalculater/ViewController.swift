//
//  ViewController.swift
//  TipCalculater
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    @IBOutlet var totalTexField : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var resultsTextView :
    UITextView!
    @IBOutlet var tableView: UITableView!
    
    var tipCalc = TipCalculatorModel(total: 33.25,  taxPct: 0.06)
    var possibleTips = Dictionary<Int, (tipAmt:Double, total:Double)>()
    var sortedKeys:[Int] = []
    
    func refreshUI(){
        totalTexField.text = String(format: "%0.2f",tipCalc.total)
        taxPctSlider.value = Float(tipCalc.taxPct)*100.0
        taxPctLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
        resultsTextView.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func caculateTapped(sender: AnyObject) {
       tipCalc.total  = Double((totalTexField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        for (tipPct, tipValue)in possibleTips{
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextView.text = results
    }
    @IBAction func taxPercentageChanged(sender: AnyObject){
     tipCalc.taxPct  = Double(taxPctSlider.value)/100.0
     refreshUI()
    }
    @IBAction func viewTapped(sender: AnyObject) {
      totalTexField.resignFirstResponder()
    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) ->Int{
        return sortedKeys.count
    }
    func numberOfSectionsInTableView(table: UITableView!) -> Int{
        return 1
    }
    func tableView(tableView: UITableView!, didSelectRowAtINdexPath indexPath: NSIndexPath!){
        
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) ->UITableViewCell!{
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        let tipPct = sortedKeys[indexPath.row]
        let tipAmt = possibleTips[tipPct]!.tipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel!.text = "\(tipPct)%"
        cell.detailTextLabel!.text = String(format:"Tip: $%0.2f, Total: $%0.2f", tipAmt, total)
        return cell
    }
}

