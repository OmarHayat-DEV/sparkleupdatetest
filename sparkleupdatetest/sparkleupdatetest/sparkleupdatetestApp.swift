//
//  sparkleupdatetestApp.swift
//  sparkleupdatetest
//
//  Created by Omar Hayat on 2026-02-07.
//

import SwiftUI
import Combine
import Sparkle

@main
struct sparkleupdatetestApp: App {
    private let updaterController: SPUStandardUpdaterController

        init() {
            updaterController = SPUStandardUpdaterController(startingUpdater: true, updaterDelegate: nil, userDriverDelegate: nil)
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
                    CommandGroup(after: .appInfo) {
                        CheckForUpdatesView(updater: updaterController.updater)
                    }
                }
    }
}
