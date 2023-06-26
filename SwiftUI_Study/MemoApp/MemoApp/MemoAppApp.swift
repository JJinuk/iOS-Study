//
//  MemoAppApp.swift
//  MemoApp
//
//  Created by 최진욱 on 2023/06/26.
//

import SwiftUI

@main
struct MemoAppApp: App {
    // 메모 저장소 속성으로 저장
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
