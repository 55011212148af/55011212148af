//
//  ViewController.swift
//  IOS8SwiftPrototypeCellsTutorial
//
//  Created by student on 9/24/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

   class ViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
       let cellIdentifier = "celldentifier"
       var tableData = ["But", "Helicopter", "Truck"]
   
       @IBOutlet var tableView: UITableView!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

