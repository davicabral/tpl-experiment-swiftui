//
//  TPL_SwiftUIApp.swift
//  TPL-SwiftUI
//
//  Created by Davi Cabral de Oliveira on 2024-06-20.
//

import SwiftUI

@main
struct TPL_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
