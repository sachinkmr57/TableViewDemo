//
//  ProfileTableViewCell.swift
//  TableViewDemo
//
//  Created by Sachinkumar D on 13/07/18.
//  Copyright © 2018 Sachinkumar D. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var notesTextView: UITextView! {
        didSet {
            notesTextView.isEditable = false
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

