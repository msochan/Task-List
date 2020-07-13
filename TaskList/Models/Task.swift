//
//  Task.swift
//  TaskList
//
//  Created by Mateusz Sochanowski on 07/07/2020.
//  Copyright © 2020 Mateusz Sochanowski. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    
    var name: String
    var completed: Bool = false
}
