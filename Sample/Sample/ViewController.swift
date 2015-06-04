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
        
        view.backgroundColor = UIColor.blackColor()
    }
    
    override func viewDidAppear(animated: Bool) {
        let loading = AnimatedLoadingView()
        view.addSubview(loading)
        view.addConstraints([
            NSLayoutConstraint(item: loading, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: loading, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: loading, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: loading, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
            ])
    }
    
}
