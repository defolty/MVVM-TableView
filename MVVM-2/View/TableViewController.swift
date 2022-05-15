//
//  TableViewController.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import UIKit
 
class TableViewController: UITableViewController {
    
    // всю информацию мы храним не в контроллере, а во viewModel
    // и чтобы мы могли достать информацию, мы должны иметь ссылку на viewModel
    var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        viewModel = ViewModel()
    }
    
    // MARK: - Table view data source
     
    // все требования к viewModel помещены в протоколы
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Con.cellID, for: indexPath) as? TableViewCell
 
        guard let tableViewCell = cell, let viewModel = viewModel else { return UITableViewCell() }
        
        // получили все значения
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        
        // передали во viewModel ячейки, сразу после этого отработал блок willSet в TableViewCell
        tableViewCell.viewModel = cellViewModel
         
        return tableViewCell
    }
}
