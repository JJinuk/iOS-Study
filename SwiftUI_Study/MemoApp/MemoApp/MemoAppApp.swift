//
//  MemoAppApp.swift
//  MemoApp
//
//  Created by 최진욱 on 2023/06/26.
//

import SwiftUI

@main
struct MemoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
