//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import Foundation
 
protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
