//
//  Constants.swift
//  dataCore
//
//  Created by Mohan K on 13/03/23.
//

import Foundation

var todoList:[String]?

func saveData(todoList:[String]) {
    UserDefaults.standard.set (todoList, forKey: "todoList")
    
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String] {
        return todo
    }
    else {
        return nil
    }
}
