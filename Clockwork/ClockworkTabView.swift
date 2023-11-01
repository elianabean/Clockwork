//
//  ClockworkTabView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/27/23.
//

import SwiftUI

struct ClockworkTabView: View {
    init() {
        UITabBar.appearance().backgroundColor = .gray.withAlphaComponent(0.1)

    }
    
    var body: some View {
        TabView {
            
            DashboardView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            MorningRoutineView()
            
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("Routine")
                }
            
            /*
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
             */
        }
        .accentColor(Color("SummerSkyBlue"))
        
    }
}

struct ClockworkTabView_Previews: PreviewProvider {
    static var previews: some View {
        ClockworkTabView()
            .environmentObject(RoutineStepViewModel())
    }
}
