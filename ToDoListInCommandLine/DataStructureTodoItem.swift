//
//  DataStructureTodoItem.swift
//  ToDoListInCommandLine
//
//  Created by Vladislav Zhichkin on 29/01/23.
//

import Foundation

struct TodoItem {
    let id: String
    let text: String
    let importance: Importance
    let deadline: Date
    
    init(dict: [String: Any]) {
        id = dict["id"] as? String ?? UUID().uuidString
        text = dict["text"] as? String ?? ""
        importance = Importance(rawValue: dict["importance"] as? String ?? "normal") ?? .normal
        deadline = Date.now
    }
    
    init(id: String, text: String, importance: Importance, deadline: Date) {
        self.id = id
        self.text = text
        self.importance = importance
        self.deadline = deadline
    }
}


enum Importance: String {
    case low = "low"
    case normal = "normal"
    case high = "high"
}


extension TodoItem {
    static func parse(json: Any) -> TodoItem? {
        
        
        return nil
    }
    
    var json : Any {
        return self
    }
    
    
}
