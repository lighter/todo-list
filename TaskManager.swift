//
//  TaskManager.swift
//  todo-list
//
//  Created by lighter on 2014/8/23.
//  Copyright (c) 2014年 lighter. All rights reserved.
//

import UIKit

var taskMgr:TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {

    var tasks = [task]()

    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }

}