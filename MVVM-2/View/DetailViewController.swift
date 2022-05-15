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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            
            // как только меняется age -
            // - меняется и значение в textLabel
            self.textLabel.text = string
        }
        
        delay(delay: 3) { [unowned self] in
            self.viewModel?.age.value = "some new value"
        }
    }
    
    private func delay(delay: Double, closure: @escaping () -> ()) {
        // отсрочка выполнения кложура
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
}
