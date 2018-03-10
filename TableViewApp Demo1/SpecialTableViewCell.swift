//
//  SpecialTableViewCell.swift
//  TableViewApp Demo1
//
//  Created by MouseMaster on 2018/3/10.
//  Copyright © 2018年 MouseMaster. All rights reserved.
//

import UIKit

class SpecialTableViewCell: UITableViewCell {

    
    @IBOutlet weak var specialImageView: UIImageView!
    @IBOutlet weak var specialLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
