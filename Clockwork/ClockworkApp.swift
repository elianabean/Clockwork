//
//  ClockworkApp.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/30/23.
//

import SwiftUI

@main
struct ClockworkApp: App {
    
    @StateObject private var routineStepViewModel = RoutineStepViewModel()
    
    var body: some Scene {
        WindowGroup {
            MorningRoutineView()
                .environmentObject(routineStepViewModel)
        }
    }
}
