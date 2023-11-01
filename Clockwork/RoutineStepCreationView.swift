//
//  RoutineStepCreationView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/30/23.
//
//  Created using tutorial from: https://medium.com/@liyicky/how-to-make-an-mvvm-swift-ui-app-742d78f6d03f

import SwiftUI
import PhotosUI

struct RoutineStepCreationView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject private var vm: RoutineStepViewModel
    
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var imageName: String = ""
    
    @State private var photosPickerItem: PhotosPickerItem?
    
    var body: some View {
        
        VStack(spacing: 0) {
            ZStack {
                Image("mountain landscape")
                    .resizable()
                    .scaledToFit()
                
                    
                HStack {
                    Spacer()
                    
                    Text("New Step")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    
                    Spacer()
                }
                .padding()
            }
            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
            
            
            form
            createButton
        }
        .ignoresSafeArea()
        .background(Color("LightGrey"))
        //.background(.gray)
    }
}

struct RoutineStepCreationView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineStepCreationView()
    }
}

extension RoutineStepCreationView {
    
    var form: some View {
        Form {
            Section {
                TextField("Step Name", text: $name)
                    .autocapitalization(.none)
                TextField("Description", text: $description)
                    .autocapitalization(.none)
            } header: {
                Text("About")
            }
            
            Section {
                TextField("Image Name", text: $imageName)
                    .autocapitalization(.none)
            } header: {
                Text("Image")
            }
            
            /*
            Section {
                PhotosPicker(selection: $photosPickerItem, matching: .images ) {
                    Image("mountain landscape")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                }
            } header: {
                Text("Upload Image")
            }
        }
        .onChange(of: photosPickerItem) { _, _ in
             */
            
            
        }
    }
    
    var createButton: some View {
        Button {
            let routineStep = RoutineStep(
                name: name,
                description: description,
                imageName: imageName,
                isDone: false)
            vm.routineSteps.append(routineStep)
            dismiss()
        } label: {
            /*Button design from https://www.appcoda.com/swiftui-buttons/ */
            Text("Create")
                .frame(width: 100, height: 25)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .padding()
                .background(Color.blue)
                .cornerRadius(40)
                .foregroundColor(.white)
                
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom, 40)
    }
}
