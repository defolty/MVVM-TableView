//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Mr", secondName: "Andersen", age: 35)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        // модель для заполнения ячейки, а не всей таблицы
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else {
            return nil
        } 
        // DetailViewModel имеет инициализатор в виде Profile
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectedRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
