//
//  ViewController.swift
//  Bare
//
//  Created by Nils Fischer on 30.04.16.
//  Copyright © 2016 iOS Dev Kurs Universität Heidelberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.greetingLabel.text = "Hellooo 👋"
    }
    
}
