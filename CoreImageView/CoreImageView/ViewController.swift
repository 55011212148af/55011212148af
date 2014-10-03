//
//  ViewController.swift
//  CoreImageView
//
//  Created by student on 10/3/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UllmageCiew: UIImageView!
    
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up //New
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension: "phg")
            beginImage = CIImage(contentsOfURL: fileURL)
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage,forKey:kCIInputAngleKey)
        filter.setValue (0.5,forkey:kCIInputAngleKey)
        let outputImage = filter.outputImage
        
        context = CIContext(options: nil)
        let cgimg = context.createCGImage(outputImage,fromRect:outputImage.extent())
        let newImage = UIImage(CGImage: cgimg)
        self.imageView.image = newImage
        
        self.logAllFilters()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadPhoto(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        pickerC.delegate = self
        self.presentViewController (pickerC, animated: true,  completion: nil)
    }
    @IBAction func savePhoto(sender: AnyObject) {
        let imageToSave = filter.outputImage
        
        let softwareContext = CIContext(options: [kCIContextUseSoftwareRenderer: true])
        let cgimg = softwareContext.createCGImage(mageToSave, fromRect:imageToSave.extent())
        let library = ALAssetsLibrary()
        library.writeImgeToSavePhotosAlbum(cgimg,metadata: imageToSave.properties(),completionBlock:nil)
    }
    
}

