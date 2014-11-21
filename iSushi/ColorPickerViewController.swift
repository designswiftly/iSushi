//
//  ColorPickerViewController.swift
//  iSushi
//
//  Created by Pierluigi Cifani on 21/11/14.
//  Copyright (c) 2014 Pierluigi Cifani. All rights reserved.
//

import Foundation
import UIKit

protocol ColorPickerProtocol : class {
    func didPickColor(red : Float , green : Float, blue : Float) -> ()
}

class ColorPickerViewController : UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    weak var delegate : ColorPickerProtocol?
    
    @IBAction func onCancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func onSelectColor(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        if let _delegate = delegate {
            _delegate.didPickColor(self.redSlider.value, green: self.greenSlider.value, blue: self.blueSlider.value)
        }
    }
}