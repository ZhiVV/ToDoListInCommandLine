//
//  main.swift
//  ToDoListInCommandLine
//
//  Created by Vladislav Zhichkin on 29/01/23.
//

import Foundation

var listOftask = FileCache()

while true {
    print("""
          ----------------------------------------------------
          Welcome to ToDoList.
          - see all task, enter - "list"
          - add new task, enter - "add"
          - delete some task, enter - "delete"
          - load lists from json file, enter - load
          - save all tasks to json file, enter - save
          - if you need exit, enter - "exit"
          ----------------------------------------------------
          """)
    let action = getDataFromUser(text: ">> Choise action you need:")
    
    switch action {
    case "list": listOftask.printTasks()
    case "add": listOftask.newTask()
    case "delete": listOftask.deleteTask()
    case "load": continue
    case "save": continue
    case "exit": exit(0)
    default: print(">> Incorrect action, try again")
    }
}




func getDataFromUser(text: String) -> String {
    print("\(text)")
    return readLine() ?? ""
}
