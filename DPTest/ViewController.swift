//
//  ViewController.swift
//  DPTest
//
//  Created by Taras Kalapun on 11/16/16.
//  Copyright © 2016 Adyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIDocumentPickerDelegate {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func log(_ text: String) {
        self.textView.text = self.textView.text + "\n" + text
    }
    
    @IBAction func openDocumentPicker(_ sender: Any) {
        
        let pickableItems = ["public.text", "public.source-code", "public.folder", "public.directory"]
        
        let docPicker = UIDocumentPickerViewController.init(documentTypes: pickableItems, in: .open)
        docPicker.delegate = self
        docPicker.modalPresentationStyle = .formSheet
        self.present(docPicker, animated: true, completion: nil)
    }
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
        
        log("documentPicker mode: \(controller.documentPickerMode), didPickDocumentAt \(url.absoluteString)")
        
    }
    
    func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        log("documentPicker WasCancelled")
    }


}

