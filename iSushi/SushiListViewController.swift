//
//  SushiListViewController.swift
//  iSushi
//
//  Created by Pierluigi Cifani on 18/11/14.
//  Copyright (c) 2014 Pierluigi Cifani. All rights reserved.
//

import Foundation
import UIKit

class SushiListViewController : UITableViewController {

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.performSegueWithIdentifier("MasterToDetail", sender: self)
    }
}
