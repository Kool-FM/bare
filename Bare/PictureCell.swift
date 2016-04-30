//
//  PictureCell.swift
//  Bare
//
//  Created by Nils Fischer on 30.04.16.
//  Copyright © 2016 iOS Dev Kurs Universität Heidelberg. All rights reserved.
//

import UIKit

class PictureCell: UITableViewCell {
    
    @IBOutlet var pictureLabel: UILabel!
    
    func configureFor🖼(🖼: String) {
        pictureLabel.text = 🖼
    }
    
}
