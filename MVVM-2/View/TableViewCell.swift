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
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }

            fullNameLabel.text = viewModel.fullname
            ageLabel.text = viewModel.age
        }
    }
}
