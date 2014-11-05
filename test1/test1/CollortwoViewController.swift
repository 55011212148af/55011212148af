//
//  CollortwoViewController.swift
//  test1
//
//  Created by Student on 10/17/14.
//  Copyright (c) 2014 Knopper. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:CollortwoViewController,text:String)
    
}
class CollortwoViewController: UIViewController {
    var delegate:ColorTwoViewControllerDelegate?=nil
    var colorString = ""
   
    
    @IBOutlet weak var ColorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func ColorselectionButton(sender: UIButton) {
        ColorLabel.text = sender.titleLabel!.text!
    }

    
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ColorLabel.text = colorString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
