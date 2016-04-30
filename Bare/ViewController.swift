//
//  ViewController.swift
//  Bare
//
//  Created by Nils Fischer on 30.04.16.
//  Copyright © 2016 iOS Dev Kurs Universität Heidelberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Hellooo 👋"
    }
    
    @IBAction func unwindToRoot(segue: UIStoryboardSegue) {
        // nothing to do
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier! {
            
        case "presentDetails":
            (segue.destinationViewController as! UINavigationController).topViewController?.title = "Modally presented 🖼"
        case "showDetails":
            segue.destinationViewController.title = "Details 🖼"

        default:
            break
        }
    }
    
}
