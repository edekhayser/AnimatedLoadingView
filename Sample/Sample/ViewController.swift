//
//  ViewController.swift
//  Sample
//
//  Created by Douglas Bumby on 2015-06-04.
//  Copyright (c) 2015 Cosmic Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let loading = AnimatedLoadingView()
        view.addSubview(loading)
        view.addConstraints([
            NSLayoutConstraint(item: loading, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: loading, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: loading, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: loading, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0)
            ])
    }
    
}
