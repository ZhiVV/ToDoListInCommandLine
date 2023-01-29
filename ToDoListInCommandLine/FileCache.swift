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
        
    }
    
    func deleteTask() -> Void {
        
    }
    
    func saveToFile(_ list: [TodoItem]) -> Void {
        
    }
    
    func readFromFile() -> [TodoItem] {
        var temp = [TodoItem]()
        
        
        return temp
    }
    
    
    
    
    func printTasks() -> Void {
        for task in cacheTodoItems {
            print("id: \(task.id) , text: \(task.text)")
        }
    }
}
