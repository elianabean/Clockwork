//
//  RoutineStep.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/19/23.
//

import Foundation
import PhotosUI

struct RoutineStep: Codable, Identifiable, Equatable {
    var id = UUID()
    let name: String
    let description: String
    let imageName: String
    let isDone: Bool
    
    static func == (lhs: RoutineStep, rhs: RoutineStep) -> Bool {
            lhs.id == rhs.id
        }
}

/*ViewModel created using tutorial: https://medium.com/@liyicky/how-to-make-an-mvvm-swift-ui-app-742d78f6d03f*/

class RoutineStepViewModel: ObservableObject {
    @Published var routineSteps = [RoutineStep]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(routineSteps) {
                UserDefaults.standard.set(encoded, forKey: "routineSteps")
            }
        }
    }
    
    @Published var showCreateStepSheet: Bool = false
    
    init() {
            if let savedRoutineSteps = UserDefaults.standard.data(forKey: "routineSteps") {
                if let decodedItems = try? JSONDecoder().decode([RoutineStep].self, from: savedRoutineSteps) {
                    routineSteps = decodedItems
                    return
                }
            }
            routineSteps = []
        }
    
    
    func updateIsDone(routineStep: RoutineStep) {
            guard let index = routineSteps.firstIndex(where: { $0 == routineStep }) else {
                fatalError("Can't find a habit to update")
            }
            
            let toBeUpdatedRoutineStep = routineSteps[index]
            let updatedRoutineStep = RoutineStep(name: toBeUpdatedRoutineStep.name, description: toBeUpdatedRoutineStep.description, imageName: toBeUpdatedRoutineStep.imageName, isDone: !(toBeUpdatedRoutineStep.isDone))
            routineSteps[index] = updatedRoutineStep
        }

     
}
