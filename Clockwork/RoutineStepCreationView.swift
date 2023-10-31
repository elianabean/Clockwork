//
//  RoutineStepCreationView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/30/23.
//
//  Created using tutorial from: https://medium.com/@liyicky/how-to-make-an-mvvm-swift-ui-app-742d78f6d03f

import SwiftUI

struct RoutineStepCreationView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject private var vm: RoutineStepViewModel
    
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var imageURL: String = ""
    
    var body: some View {
        VStack {
            form
            createButton
        }
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
            TextField("Step Name", text: $name)
            TextField("Description", text: $description)
        }
    }
    
    var createButton: some View {
        Button {
            let routineStep = RoutineStep(
                name: name,
                description: description,
                imageURL: imageURL,
                isDone: false)
            vm.routineSteps.append(routineStep)
            dismiss()
        } label: {
            Text("Create")
                .frame(maxWidth: .infinity)
                .frame(height: 25)
        }
        .buttonStyle(.borderedProminent)
    }
}
