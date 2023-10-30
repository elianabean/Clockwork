//
//  MorningRoutineView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/27/23.
//

import SwiftUI


struct MorningRoutineView: View {
    /*
    @State var numDone = MockData.steps.filter { (step : RoutineStep) -> Bool in
        return step.isDone
    }.count
     */
    
    
    var body: some View {
       //@State var _ = print("bruh\(numDone)")
        
        
       NavigationView {
            GeometryReader { geo in
                VStack {
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
                                
                                ProgressBar(value: Double(MockData.steps.filter { $0.isDone }.count) / Double(MockData.steps.count))
                                               .frame(width: 300, height: 20)
                                               .padding()
                                
                                Image(systemName: "sun.max.fill")
                                Text("My Morning Routine")
                                    .lineLimit(1)
                            }
                            Divider()
                                .frame(width: 180, height: 2.5)
                                .overlay(.black)
                                
                        }
                        .padding(.leading, 20)
                        .padding(.top, 20)
                        .frame(width: geo.size.width, alignment: .leading)
                        
                        
                        NavigationView {
                            List(MockData.steps) { sampleStep in
                                RoutineStepCell(routineStep: sampleStep)
                            }
                             .listStyle(PlainListStyle())
                            /*
                             .onChange(of: MockData.steps, perform: { value in
                                         for step in MockData.steps where step.isDone {
                                             counter.update()
                                             break
                                         }
                                     })
                             */
                            
                        }
                        .frame(maxHeight: geo.size.height)
                        
                    }
                }
                
            }
                .frame(maxHeight: .infinity)
           
                }
        
    }
}

struct ProgressBar: View {
    var value: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color.gray)

                Rectangle()
                    .frame(width: min(CGFloat(self.value) * geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color.blue)
                    
            }
        }
    }
}

struct MorningRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        MorningRoutineView()
        
    }
}
