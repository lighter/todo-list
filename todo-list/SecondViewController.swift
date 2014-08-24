//
//  SecondViewController.swift
//  todo-list
//
//  Created by lighter on 2014/8/23.
//  Copyright (c) 2014年 lighter. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAddTask_Click(sender: UIButton) {
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController.selectedIndex = 0
    }

    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

