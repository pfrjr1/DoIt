//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Peter Rooney on 4/28/17.
//  Copyright © 2017 Peter Rooney. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNamTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a task from the outlet information
        
        let task = Task()
        task.name = taskNamTextField.text!
        task.important = importantSwitch.isOn
        
        
        // Add new task to array in previous controller
        
        previousVC.tasks.append(task)
        
    }

}
