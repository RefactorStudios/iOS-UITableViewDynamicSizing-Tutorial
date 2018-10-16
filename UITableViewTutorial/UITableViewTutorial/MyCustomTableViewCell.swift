//
//  MyCustomTableViewCell.swift
//  UITableViewTutorial
//
//  Created by Stephen Feuerstein on 10/16/18.
//  Copyright © 2018 Refactor Studios. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
