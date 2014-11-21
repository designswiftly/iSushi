//
//  CreateSushiOverviewViewController.swift
//  iSushi
//
//  Created by Pierluigi Cifani on 18/11/14.
//  Copyright (c) 2014 Pierluigi Cifani. All rights reserved.
//

import Foundation
import UIKit

class CreateSushiOverviewViewController: UITableViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var placeholderImageView: UIImageView!
    @IBOutlet weak var addPhotoButton: UIButton!

    @IBAction func onClose(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onAddPhoto(sender: AnyObject) {
        let picker = UIImagePickerController()
        picker.delegate = self
        self.presentViewController(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        let pickedImage : UIImage = info[UIImagePickerControllerOriginalImage] as UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
        
        self.placePickedImage(pickedImage)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    func placePickedImage (pickedImage: UIImage) {
        placeholderImageView.image = pickedImage
        placeholderImageView.contentMode = .ScaleAspectFit
        addPhotoButton.hidden = true
    }
}