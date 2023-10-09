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
                        
                        Text("**Clockwork**")
                            .font(.system(size: 70))
                            .foregroundColor(.white)
                        
                    }
                    
                    Spacer()
                    
                    Text("An app designed to help you stick to your routines!")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    HStack{
                        Spacer()
                        Button {
                        } label: {
                            Text("Log in")
                                .font(.system(size: 20))
                                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 30))
                        }
                            
                            .foregroundColor(.white)
                            .background(.gray)
                            .cornerRadius(10)
                        
                        Spacer()
                        
                        Button {
                        } label: {
                            Text("Sign Up")
                                .font(.system(size: 20))
                                .padding(EdgeInsets(top: 20, leading: 30, bottom: 20, trailing: 30))
                        }
                            .foregroundColor(.white)
                            .background(.gray)
                            .cornerRadius(10)
                        
                        Spacer()
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
