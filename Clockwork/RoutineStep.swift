//
//  RoutineStep.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/19/23.
//

import Foundation

struct RoutineStep: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    var isDone: Bool
    
}

struct MockData {
    static let sampleStep1 = RoutineStep(
        id: 001,
        name: "Brush Teeth",
        description: "Brush teeth for 3 minutes or else your teeth will grow cavities",
        imageURL: "",
        isDone: false)
    
    static let sampleStep2 = RoutineStep(
        id: 002,
        name: "Brush Hair",
        description: "yes",
        imageURL: "",
        isDone: false)
    
    static let sampleStep3 = RoutineStep(
        id: 003,
        name: "Use Lotion",
        description: "yes",
        imageURL: "",
        isDone: false)
    
    static let sampleStep4 = RoutineStep(
        id: 004,
        name: "Set Alarm",
        description: "yes",
        imageURL: "",
        isDone: false)
    
    static let steps = [sampleStep1, sampleStep2, sampleStep3, sampleStep4]
}
