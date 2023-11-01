//
//  MorningRoutineView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/27/23.
//

import SwiftUI


struct MorningRoutineView: View {
    /*
    @State var sampleSteps = [
        RoutineStep(
            name: "Brush Teeth",
            description: "Brush teeth for 3 minutes or else your teeth will grow cavities",
            imageURL: "",
            isDone: true),
        RoutineStep(
            name: "Brush Hair",
            description: "yes",
            imageURL: "",
            isDone: true),
        RoutineStep(
            name: "Use Lotion",
            description: "yes",
            imageURL: "",
            isDone: false),
        RoutineStep(
            name: "Set Alarm",
            description: "yes",
            imageURL: "",
            isDone: false),
        RoutineStep(
            name: "Go to Sleep",
            description: "yes",
            imageURL: "",
            isDone: false)
    ]
     */
    
    @EnvironmentObject private var vm: RoutineStepViewModel
    
    func deleteItem2(routineStep: RoutineStep) {
        if let index = vm.routineSteps.firstIndex(of: routineStep) {
            vm.routineSteps.remove(at: index)
            }
        }
    
    func deleteItem(at offsets: IndexSet) {
        vm.routineSteps.remove(atOffsets: offsets)
        }
    
    @State var items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        
        
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
                                VStack {
                                    HStack {
                                        Image(systemName: "flame.fill")
                                        Text("My Progress")
                                            .lineLimit(1)
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 20)
                                    
                                    
                                    Divider()
                                        .frame(width: 180, height: 2.5)
                                        .overlay(.black)
                                        .padding(.leading, 20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                                } //VStack
                                
                                Spacer()
                            }
                            .padding(.bottom, 10)

                            
                            HStack {
                                Spacer()
                                ProgressBar(percent: CGFloat(vm.routineSteps.filter { $0.isDone }.count) / CGFloat(vm.routineSteps.count))
                                               .animation(.spring())
                            
                                Spacer()
                            }
                        } //VStack
                        
                        
                        .padding(.top, 20)
                        .frame(width: geo.size.width, alignment: .leading)
                        
                        VStack {
                            
                            HStack {
                                Image(systemName: "sun.max.fill")
                                Text("My Morning Routine")
                                    .lineLimit(1)
                            }
                            Divider()
                                .frame(width: 180, height: 2.5)
                                .overlay(.black)
                                
                        } //VStack
                        .padding(.leading, 20)
                        .padding(.top, 20)
                        .frame(width: geo.size.width, alignment: .leading)
                        
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            routineStepCells
                            Spacer()
                        }
                        .sheet(isPresented: $vm.showCreateStepSheet) {
                            RoutineStepCreationView()
                        }
                        
                        Button {
                            vm.showCreateStepSheet.toggle()
                        } label: {
                            /*Button design from https://www.appcoda.com/swiftui-buttons/ */
                            Text("New Step")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                        }
                        
                    }
                }
                
            }
                .frame(maxHeight: .infinity)
           
                }
        
    }
}

struct ProgressBar: View {
    var width: CGFloat = 300
    var percent: CGFloat = 10
    
    var body: some View {
        ZStack(alignment: .leading) {
            let multiplier = width
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: multiplier, height: 20)
                .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: percent * multiplier, height: 20)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                )
            
                .foregroundColor(.clear)
            
        }
        
    }
}

struct MorningRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        MorningRoutineView()
            .environmentObject(RoutineStepViewModel())
        
    }
}

extension MorningRoutineView {
    
    
    var routineStepCells: some View {
        NavigationStack {
            VStack(spacing: 5) {
                List {
                    ForEach(vm.routineSteps) { routineStep in
                        RoutineStepRowView(routineStep: routineStep)
                            .padding(.horizontal, 45)
                        /*
                        Text("lol")
                            .padding(20)
                            .background(.red)
                        */
                        /*
                            .swipeActions {
                                Button(role: .destructive) {
                                    deleteItem2(routineStep: routineStep)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                        
                            }
                         */
                         
                    }
                    .onDelete(perform: deleteItem)
                }
                
                
            }
        }
        
    }
}
