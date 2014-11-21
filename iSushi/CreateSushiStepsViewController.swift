//
//  CreateSushiStepsViewController.swift
//  iSushi
//
//  Created by Pierluigi Cifani on 18/11/14.
//  Copyright (c) 2014 Pierluigi Cifani. All rights reserved.
//

import Foundation
import UIKit

class CreateSushiStepsViewController : UITableViewController {
    
    override func viewDidLoad() {
        self.tableView.tableFooterView = UIView()
    }

    @IBAction func onFinish(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
