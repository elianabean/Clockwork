//
//  NightRoutineView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/27/23.
//

import SwiftUI

struct NightRoutineView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                ZStack {
                    VStack(spacing: 0) {
                        ZStack {
                            Image("mountain landscape")
                                .resizable()
                                .ignoresSafeArea()
                                .frame(width: geo.size.width, height: geo.size.height * 0.15, alignment: .center)
                                
                            
                            Text("**Clockwork**")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                            
                        }
                        
                        
                        VStack {
                            HStack {
                                Image(systemName: "moon.zzz.fill")
                                Text("My Night Routine")
                                    .lineLimit(1)
                            }
                            Divider()
                                .frame(width: 180, height: 2.5)
                                .overlay(.black)
                                
                        }
                        .padding(.leading, 20)
                        .padding(.top, 20)
                        .frame(width: geo.size.width, alignment: .leading)
                        
                        /*
                        NavigationView {
                            List(MockData.steps) { sampleStep in
                                RoutineStepCell(routineStep: sampleStep)
                            }
                             .listStyle(PlainListStyle())
                            
                        }
                        
                        .frame(maxHeight: geo.size.height)
                         */
                        
                    }
                    
                }
            }
                .frame(maxHeight: .infinity)
                }
    }
}

struct NightRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        NightRoutineView()
    }
}
