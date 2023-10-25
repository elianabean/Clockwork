//
//  RoutinesView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/19/23.
//

import SwiftUI

struct RoutinesView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(.white)
                    .ignoresSafeArea()
                
                
                VStack {
                    ZStack {
                        Image("mountain landscape")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width, height: geo.size.height * 0.20, alignment: .center)
                            .clipped()
                        
                        Text("**Clockwork**")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .padding(.top, 20)
                        
                        
                    }
                    .ignoresSafeArea()
                    
                    VStack {
                        HStack {
                            Image(systemName: "bell.fill")
                            Text("My Progress")
                            
                            Spacer()
                        }
                        Divider()
                            .frame(width: 130, height: 2.5)
                            .overlay(.black)
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 240))
                    
                    Spacer()
                    
                    NavigationView {
                        List(MockData.steps) { sampleStep in
                               RoutineStepCell(routineStep: sampleStep)
                            }
                            
                        }
                    
                }
                
            }
        }
    }
}

struct RoutinesView_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesView()
    }
}
