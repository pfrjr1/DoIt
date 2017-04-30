//
//  completeTaskViewController.swift
//  DoIt
//
//  Created by Peter Rooney on 4/30/17.
//  Copyright © 2017 Peter Rooney. All rights reserved.
//

import UIKit

class CompleteTaskViewController:
UIViewController {
    
    @IBOutlet var taskLabel: UIView!
    
    
    var task = Task()

    override func viewDidLoad() {
        super.viewDidLoad()

        taskLabel.text = task.name    }

    @IBAction func completeTapped(_ sender: Any) {
    }
    
}
