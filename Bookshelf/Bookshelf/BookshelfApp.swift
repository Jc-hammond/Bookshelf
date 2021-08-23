//
//  BookshelfApp.swift
//  Bookshelf
//
//  Created by Connor Hammond on 8/22/21.
//

import SwiftUI

@main
struct BookshelfApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
