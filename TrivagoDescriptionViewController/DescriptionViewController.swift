//
//  DescriptionViewController.swift
//  TrivagoDescriptionViewController
//
//  Created by Dogukaan Kılıçarslan on 20.02.2022.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    private var mainComponent: ViewComponent!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addMainComponent()
    }
    
    private func addMainComponent() {
        mainComponent = ViewComponent()
        mainComponent.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainComponent)
        
        NSLayoutConstraint.activate([
            
            mainComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainComponent.topAnchor.constraint(equalTo: view.topAnchor),
            mainComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }
    
}
