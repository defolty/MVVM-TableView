//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject { 
    var fullname: String { get }
    var age: String { get }
}
