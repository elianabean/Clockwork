//
//  RoutineStepRowView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/30/23.
//

import SwiftUI



struct RoutineStepRowView: View {
    
    
    @EnvironmentObject private var vm: RoutineStepViewModel
    
    @State var routineStep: RoutineStep
    
    @State private var isOn : Bool = false
    @State private var test = false
    
    var body: some View {
        HStack {
            
            Toggle(isOn: $test) {
            }
            .toggleStyle( CheckboxToggleStyle(routineStep: routineStep))
                .onChange(of: test) { _ in
                    
                    vm.updateIsDone(routineStep: routineStep)
            }
                
            
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(routineStep.name)
                        .font(.custom("Lato-Bold", size: 24))
                        .foregroundColor(.black.opacity(0.8))
                    
                    Text(routineStep.description)
                        .font(.custom("Montserrat-Regular", size: 16))
                        .foregroundColor(.secondary)
                    
                    
                }
                .multilineTextAlignment(.leading)
                .padding(.leading, 20)
                
                Spacer()
                
            }
            .frame(width: 200, height: 100)
            
            
            Spacer()
            
            Image(routineStep.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .cornerRadius(32)
                .padding(.trailing, 10)
        }
        .frame(width: 250, height: 100)
    }
}

struct RoutineStepRowView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        
        
        RoutineStepRowView(routineStep: RoutineStep(
            name: "Go to Sleep",
            description: "yes",
            imageName: "toothbrush",
            isDone: false))
         
       
        
    }
}

extension RoutineStepRowView {
    
}

//CheckboxToggleStyle from https://www.appcoda.com/swiftui-checkbox/

struct CheckboxToggleStyle: ToggleStyle {
    @State var routineStep: RoutineStep
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: routineStep.isDone ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 40, height: 40)
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    
                    }
                }
            
            configuration.label
    }
    }
}
