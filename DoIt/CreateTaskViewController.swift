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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a task from the outlet information
        
        let context = (UIApplication.shared.delegate as!
            AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
            task.name = taskNamTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        // save Pop back

        navigationController!.popViewController(animated: true)
    }

}
