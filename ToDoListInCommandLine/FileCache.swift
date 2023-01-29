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
        
    }
    
    func readFromFile() -> [TodoItem] {
        var temp = [TodoItem]()
        
        
        return temp
    }
    
    
    
    
    func printTasks() -> Void {
        guard cacheTodoItems.count != 0 else { print(">> List of tasks is empty")
            return
        }
        for task in cacheTodoItems {
            print("text: \(task.text), importance: \(task.importance), deadline: \(task.deadline)")
        }
    }
}
