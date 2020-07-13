//
//  TaskStore.swift
//  TaskList
//
//  Created by Mateusz Sochanowski on 07/07/2020.
//  Copyright © 2020 Mateusz Sochanowski. All rights reserved.
//

import Combine

class TaskStore: ObservableObject {
    
    @Published var prioritizedTasks = [
        PrioritizedTasks(
            priority: .high,
            names: [
                "Buy milk",
                "Do the homework",
                "Go to the gym",
                "Play computer games"]),
        
        PrioritizedTasks(
            priority: .medium,
            names: [
                "Swim in ocean",
                "Cook some nice meals"]),
        
        PrioritizedTasks(
            priority: .low,
            names: [
                "Go shopping",
                "Watch netflix"]),
        
        PrioritizedTasks(
            priority: .no,
            names: [
                "Visit family",
                "Meet girlfriend"])
    ]
    
    func getIndex(for priority: Task.Priority) -> Int {
        return prioritizedTasks.firstIndex { $0.priority == priority }!
    }
}

private extension TaskStore.PrioritizedTasks {
    init(priority: Task.Priority, names: [String]) {
        self.init(
            priority: priority,
            tasks: names.map { Task(name: $0) }
        )
    }
}
