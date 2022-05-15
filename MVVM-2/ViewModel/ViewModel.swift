//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import Foundation

class ViewModel: TableViewModelType {
     
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Mr", secondName: "Andersen", age: 35)
    ]
    
    var numberOfRows: Int {
        return profiles.count
    }
    
}
