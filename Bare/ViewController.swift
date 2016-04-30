//
//  ViewController.swift
//  Bare
//
//  Created by Nils Fischer on 30.04.16.
//  Copyright © 2016 iOS Dev Kurs Universität Heidelberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let 🖼s = [ "🏔", "🏞", "🌅" ]
        
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
            guard let indexPath = (self.view as! UITableView).indexPathForSelectedRow else { return }
            segue.destinationViewController.title = 🖼s[indexPath.row]

        default:
            break
        }
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 🖼s.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let 🖼 = 🖼s[indexPath.row]
        cell.textLabel?.text = 🖼
        return cell
    }
    
}
