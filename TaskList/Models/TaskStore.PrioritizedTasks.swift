//
//  TaskStore.PrioritizedTasks.swift
//  TaskList
//
//  Created by Mateusz Sochanowski on 11/07/2020.
//  Copyright © 2020 Mateusz Sochanowski. All rights reserved.
//

extension TaskStore {
    struct PrioritizedTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PrioritizedTasks: Identifiable {
    var id:Task.Priority { priority }
}
