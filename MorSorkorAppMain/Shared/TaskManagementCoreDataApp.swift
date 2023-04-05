//
//  TaskManagementCoreDataApp.swift
//  Shared
//
//  Created by วราลี พัฒน์สาร on 3/24/23.
//
import SwiftUI

@main
struct TaskManagementCoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
