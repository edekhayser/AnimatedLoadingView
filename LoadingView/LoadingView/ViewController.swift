//
//  ViewController.swift
//  LoadingView
//
//  Created by Evan Dekhayser on 12/29/14.
//  Copyright (c) 2014 Xappox, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		view.backgroundColor = UIColor.blackColor()
	}
	
	override func viewDidAppear(animated: Bool) {
		let loading = LoadingView()
		view.addSubview(loading)
		view.addConstraints([
			NSLayoutConstraint(item: loading, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
			NSLayoutConstraint(item: loading, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: 0),
			NSLayoutConstraint(item: loading, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0),
			NSLayoutConstraint(item: loading, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
			])
	}
	
}
