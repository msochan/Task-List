//
//  SectionView.swift
//  TaskList
//
//  Created by Mateusz Sochanowski on 12/07/2020.
//  Copyright © 2020 Mateusz Sochanowski. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritizedTasks: TaskStore.PrioritizedTasks
    
    var body: some View {
        Section(
            header: Text("\(prioritizedTasks.priority.rawValue.capitalized) priority")
        ) {
            ForEach(prioritizedTasks.tasks) { index  in
                RowView(task: self.$prioritizedTasks.tasks[index])
            }
            .onMove { sourceIndicies, destinationIndicies in
                self.prioritizedTasks.tasks.move(
                    fromOffsets: sourceIndicies,
                    toOffset: destinationIndicies
                )
            }
            .onDelete { indexSet in
                self.prioritizedTasks.tasks.remove(atOffsets:  indexSet)
            }
        }
    }
}
