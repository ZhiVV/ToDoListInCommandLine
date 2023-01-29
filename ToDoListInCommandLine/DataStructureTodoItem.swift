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
}


enum Importance {
    case low
    case normal
    case high
}
