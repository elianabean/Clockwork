//
//  DashboardView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/9/23.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                //Zstack goes in reverse order. the first thing is the most-back thing
                Color(.white)
                    .ignoresSafeArea()
                
                
                VStack {
                    ZStack {
                        Image("mountain landscape")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width, height: geo.size.height * 0.30, alignment: .center)
                            .clipped()
                        
                        Text("**Clockwork**")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                            .padding(.top, 20)
                        
                        
                    }
                    .ignoresSafeArea()
                    .padding(.bottom, 0)
                    
                    VStack {
                        HStack {
                            Image(systemName: "bell.fill")
                            Text("Notifications")
                            
                            Spacer()
                        }
                        Divider()
                            .frame(width: 130, height: 2.5)
                            .overlay(.black)
                            
                        
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 240))
                    
                    Spacer()
                }
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
