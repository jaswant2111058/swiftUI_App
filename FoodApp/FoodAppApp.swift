//
//  FoodAppApp.swift
//  FoodApp
//
//  Created by Jaswant Kushwaha on 20/10/24.
//

import SwiftUI

@main
struct FoodAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
