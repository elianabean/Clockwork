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
    
    init(){
        for family in UIFont.familyNames {
             print(family)
             for names in UIFont.fontNames(forFamilyName: family){
             print("== \(names)")
             }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ClockworkTabView()
                .environmentObject(routineStepViewModel)
        }
    }
}
