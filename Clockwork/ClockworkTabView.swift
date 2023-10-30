//
//  ClockworkTabView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/27/23.
//

import SwiftUI

struct ClockworkTabView: View {
    var body: some View {
        TabView {
            MorningRoutineView()
                .tabItem {
                    Image(systemName: "sun.max.fill")
                    Text("Morning")
                }
            
            NightRoutineView()
                .tabItem {
                    Image(systemName: "moon.zzz.fill")
                    Text("Night")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
        
    }
}

struct ClockworkTabView_Previews: PreviewProvider {
    static var previews: some View {
        ClockworkTabView()
    }
}
