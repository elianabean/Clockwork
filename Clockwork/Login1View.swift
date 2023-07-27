//
//  Login1View.swift
//  Clockwork
//
//  Created by Eliana Wang on 7/27/23.
//

import SwiftUI

struct Login1View: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                //Zstack goes in reverse order. the first thing is the most-back thing
                Color(.white)
                    .ignoresSafeArea()
                
                
                VStack {
                    ZStack {
                        Image("mountain landscape")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                            .frame(width: geo.size.width, height: geo.size.height * 0.60, alignment: .center)
                        
                        Text("Clockwork")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                    }
                    
                    Spacer()
                }
                
                
            }
        }
    }
}

struct Login1View_Previews: PreviewProvider {
    static var previews: some View {
        Login1View()
    }
}
