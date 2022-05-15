//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import Foundation
 
// зачем нам нужен этот протокол
// следуя принципу D(Dependency inversion — принцип инверсии зависимостей) into SOLID
// мы должны строить нашу зависимость так чтобы она основывалась на абстракциях, а не на конкретных типах
protocol TableViewViewModelType {
    // первое требование, количество строк в таблице
    func numberOfRows() -> Int
    
    // после того как мы определили количество строк в таблице
    // мы должны предоставить информацию для ячейки
    // этот метод генерирует viewModel для indexPath(для конкретного адреса)
    // и имеет тип следующего протокола, со следующими требованиями TableViewCellViewModelType
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectedRow(atIndexPath indexPath: IndexPath)
}
