//
//  ViewController.swift
//  test1
//
//  Created by Student on 10/17/14.
//  Copyright (c) 2014 Knopper. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
   
    
    @IBOutlet weak var ColorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func ColorselectionButton(sender: UIButton) {
        ColorLabel.text = sender.titleLabel!.text!
    }
    
    @IBAction func saveColor(sender: UIBarButtonItem) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    
    
}

