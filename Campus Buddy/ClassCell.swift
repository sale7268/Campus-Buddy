//
//  ClassCell.swift
//  Campus Buddy
//
//  Created by user190273 on 4/15/21.
//

import UIKit

class ClassCell: UITableViewCell {
    
    
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var buildingLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
