//
//  TableViewController.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import UIKit

class TableViewController: UITableViewController {
 
    var viewModel: TableViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        viewModel = ViewModel()
    }
    
    // MARK: - Table view data source
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows ?? 0
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
 
        guard let tableViewCell = cell, let viewModel = viewModel else { return UITableViewCell() }
        
        let profile = viewModel.profiles[indexPath.row]
        
        tableViewCell.ageLabel.text = "\(profile.age)"
        tableViewCell.fullNameLabel.text = "\(profile.name) \(profile.secondName)"
        
        return tableViewCell
    }
}
