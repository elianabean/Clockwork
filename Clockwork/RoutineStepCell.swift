//
//  RoutineStepCell.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/19/23.
//

import SwiftUI

struct RoutineStepCell: View {
    @State var routineStep: RoutineStep
    
    var body: some View {
        HStack {
            //put the checkbox here
            Toggle(isOn: $routineStep.isDone) {
            }
                        .toggleStyle(CheckboxToggleStyle())
            
            var _ = print("\(routineStep.isDone)")
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(routineStep.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text(routineStep.description)
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .font(.subheadline)
                    
                    
                }
                .multilineTextAlignment(.leading)
                .padding(.leading, 20)
                
                Spacer()
                
            }
            .frame(width: 200, height: 100)
            
            
            Spacer()
            
            Image("toothbrush")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .cornerRadius(32)
                .padding(.trailing, 10)
        }
        .frame(width: 250, height: 100)
        .padding(10)
        .padding(.leading, 80)
        .padding(.trailing, 60)
        
    }
}

struct RoutineStepCell_Previews: PreviewProvider {
    static var previews: some View {
        RoutineStepCell(routineStep: MockData.sampleStep1)
    }
}

//CheckboxToggleStyle from https://www.appcoda.com/swiftui-checkbox/

struct CheckboxToggleStyle: ToggleStyle {
    
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
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
