//
//  Box.swift
//  MVVM-2
//
//  Created by Nikita Nesporov on 15.05.2022.
//

import Foundation

// Boxing
// этот класс будет оборачивать интересующие нас свойства
// и к этим свойствам можно будет добавить наблюдателя
// T - говорит о том, что будет какое-то свойство
// за которым будет происходить наблюдение
class Box<T> {
    
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    // за этим значением наблюдает наблюдатель
    var value: T {
        didSet {
            // как только у нас меняется значение
            // мы в listener передаём значение
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener) {
        // связали
        self.listener = listener
        // передали
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
