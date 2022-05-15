//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    } 
}
