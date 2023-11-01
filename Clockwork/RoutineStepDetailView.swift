//
//  RoutineStepDetailView.swift
//  Clockwork
//
//  Created by Eliana Wang on 11/1/23.
//
// Created using tutorial from Sean Allen: https://youtu.be/b1oC7sLIgpI?si=lmtwled8fHb7Hfje

import SwiftUI

struct RoutineStepDetailView: View {
    let routineStep: RoutineStep
    
    var body: some View {
        VStack {
            Image(routineStep.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 275, height: 225)
                .clipped() //to stay inside frame
            
            VStack(spacing: 0) {
                Text(routineStep.name)
                    .font(.custom("Lato-Bold", size: 24))
                    .foregroundColor(.black.opacity(0.8))
                    .padding(.top, 5)
                
                Text(routineStep.description)
                    
                    .multilineTextAlignment(.center) //to center the text
                    .padding()
                    .font(.custom("Montserrat-Regular", size: 16))
                    .foregroundColor(.secondary)
                
                
            }
        
            Spacer()
        /*
         Button {
         print("tapped")
         } label: {
         Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
         .font(.title3)
         .fontWeight(.semibold)
         .frame(width: 260, height: 50)
         .foregroundColor(.white)
         .background(Color("brandPrimary"))
         .cornerRadius(10)
         }
         .padding(.bottom, 30)
         */
        
    }
        .frame(width: 275, height: 350)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        //.shadow(radius: 40)
    }
}

struct RoutineStepDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineStepDetailView(routineStep: RoutineStep(name: "Brush Teeth", description: "Brush teeth for 3 minutes or else you will get cavities.", imageName: "moisturizer", isDone: false))
    }
}
