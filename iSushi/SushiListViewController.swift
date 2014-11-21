//
//  SushiListViewController.swift
//  iSushi
//
//  Created by Pierluigi Cifani on 18/11/14.
//  Copyright (c) 2014 Pierluigi Cifani. All rights reserved.
//

import Foundation
import UIKit

class SushiListViewController : UITableViewController, ColorPickerProtocol{

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.performSegueWithIdentifier("MasterToDetail", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier! == "ColorPicker" {
            let navController = segue.destinationViewController as UINavigationController
            let picker = navController.topViewController as ColorPickerViewController
            picker.delegate = self
        }
    }
    
    func didPickColor(red: Float, green: Float, blue: Float) {
        
        //This will set the tintColor for the navigationBar
        UINavigationBar.appearance().barTintColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(1.0))
    }
}
