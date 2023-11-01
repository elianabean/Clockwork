//
//  ClockworkApp.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/30/23.
//
// Mountains Image from https://pixabay.com/photos/rough-horn-alpine-2146181/

import SwiftUI

@main
struct ClockworkApp: App {
    
    @StateObject private var routineStepViewModel = RoutineStepViewModel()
    
    var body: some Scene {
        WindowGroup {
            Login1View()
        }
    }
}
