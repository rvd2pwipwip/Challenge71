//
//  ViewController.swift
//  Challenge71
//
//  Created by Herve Desrosiers on 2020-03-09.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let fontSize: CGFloat = 24.0
    private let minimumWidth: CGFloat = 160.0
    private let largeMargin: CGFloat = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        authorLabel.text = "William Shakespeare"
        quoteLabel.text = "To be, or not to be, that is the question"
    }
    
    private func setupView() {
        view.addSubview(authorLabel)
        view.addSubview(quoteLabel)
        
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: largeMargin, leading: largeMargin, bottom: largeMargin, trailing: largeMargin)
        
        let optionalWidthConstraint = quoteLabel.widthAnchor.constraint(equalTo: authorLabel.widthAnchor, multiplier: 2)
        optionalWidthConstraint.priority = .defaultHigh
        
        let margins = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            authorLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            authorLabel.topAnchor.constraint(equalTo: margins.topAnchor),
            quoteLabel.topAnchor.constraint(equalTo: margins.topAnchor),
            quoteLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            quoteLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: authorLabel.trailingAnchor, multiplier: 1),
            authorLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: minimumWidth),
            optionalWidthConstraint
        ])
    }

    private lazy var authorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var quoteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .purple
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.numberOfLines = 0
        return label
    }()

}


