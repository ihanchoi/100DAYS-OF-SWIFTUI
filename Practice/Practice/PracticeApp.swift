//
//  PracticeApp.swift
//  Practice
//
//  Created by Leehan on 2022/02/09.
//

import SwiftUI

@main
struct PracticeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
