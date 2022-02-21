//
//  ViewComponent.swift
//  TrivagoDescriptionViewController
//
//  Created by Dogukaan Kılıçarslan on 21.02.2022.
//

import Foundation
import UIKit

class ViewComponent: UIView {
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            headerLabel,
            bodyLabel ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 10
        stackView.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        return stackView
    }()
    
    private lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.text = "Some Header"
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return label
    }()
    
    private lazy var bodyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12)
        label.text = "Some long body"
        label.setContentHuggingPriority(.defaultLow, for: .vertical)
        return label
    }()
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView() {
        addSubview(mainStackView)
        configureConstraints()
    }
    
    private func configureConstraints() {
        
        let mainStackViewConstraints = [
            mainStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            bodyLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ]
        NSLayoutConstraint.activate(mainStackViewConstraints)
    }
}

