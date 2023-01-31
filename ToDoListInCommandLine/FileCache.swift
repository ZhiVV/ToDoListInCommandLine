//
//  FileCache.swift
//  ToDoListInCommandLine
//
//  Created by Vladislav Zhichkin on 29/01/23.
//

import Foundation

class FileCache {
    var cacheTodoItems = [TodoItem]()
    
    
    
    func newTask() -> Void {
        let text = getDataFromUser(text: ">> Enter task body:")
        let tempImportance = getDataFromUser(text: ">> Enter task importance. \"high\" or \"low\". Blank for \"normal\":")
        
        var importance: Importance
        
        switch tempImportance {
        case "high": importance = .high
        case "low": importance = .low
        default: importance = .normal
        }
       
        let temp = TodoItem(id: UUID().uuidString, text: text, importance: importance, deadline: Date.now)
        cacheTodoItems.append(temp)
    }
    
    func deleteTask() -> Void {
        guard cacheTodoItems.count != 0 else { print(">> List of tasks is empty")
            return
        }
        
        let index = getDataFromUser(text: ">> Which task do you want to delete? Enter number:")
        guard let index = Int(index) else { print(">> You enter not a number!")
            return
        }
        
        guard index > 0 && index <= cacheTodoItems.count else { print(">> You enter number out of range!")
            return
        }
            
        cacheTodoItems.remove(at: index - 1)
    }
    
    func saveToFile(_ list: [TodoItem]) -> Void {
        print(">> Functional is under construction")
    }
    
    func readFromFile() -> Void {
        let pathToFile = "/Users/vlad/Documents/myCode/ToDoListInCommandLine/ToDoListInCommandLine/file.json"       //getDataFromUser(text: ">> Enter file name:")
        
        let data = try! Data(contentsOf: URL(fileURLWithPath: pathToFile))
        
        let dictionary = try! JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: Any]
        
        let tasksArray = dictionary["tasks"] as! [[String: Any]]
        
        var returnArray: [TodoItem] = []
        
        for tasksDict in tasksArray {
            returnArray.append(TodoItem(dict: tasksDict))
        }
        
        self.cacheTodoItems = returnArray
        guard cacheTodoItems.count != 0 else { print(">> Tasks not found in file!")
            return
        }
        
        print(">> Load \(cacheTodoItems.count) tasks!")
    }
    
    
    
    
    func printTasks() -> Void {
        guard cacheTodoItems.count != 0 else { print(">> List of tasks is empty")
            return
        }
        for task in cacheTodoItems {
            print("text: \(task.text), importance: \(task.importance), id: \(task.id)")
        }
    }
}
