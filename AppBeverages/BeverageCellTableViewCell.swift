//
//  BeverageCellTableViewCell.swift
//  AppBeverages
//
//  Created by Alejo F. Sastre Martínez on 29/10/2019.
//  Copyright © 2019 Alejo F. Sastre Martínez. All rights reserved.
//

import UIKit

class BeverageCellTableViewCell: UITableViewCell {

    @IBOutlet weak var beverageImageView: UIImageView!
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
