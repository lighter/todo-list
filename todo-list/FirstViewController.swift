//
//  FirstViewController.swift
//  todo-list
//
//  Created by lighter on 2014/8/23.
//  Copyright (c) 2014年 lighter. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblTasks: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData()
    }

    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {

        if editingStyle == UITableViewCellEditingStyle.Delete {
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData()
        }
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")

        cell.textLabel.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].desc

        return cell
    }

}

