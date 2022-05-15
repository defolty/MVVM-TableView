//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var textLabel: UILabel!
     
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
}
