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
                    
                    Text("A personalizable app help you create, establish, and stick to your routines!")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    HStack{
                        Spacer()
                        Button {
                            
                        } label: {
                            /*Button design from https://www.appcoda.com/swiftui-buttons/ */
                            Text("Log in")
                                .frame(width: 100, height: 25)
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding()
                                .background(Color("PrimaryDarkBlue"))
                                .cornerRadius(20)
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            /*Button design from https://www.appcoda.com/swiftui-buttons/ */
                            Text("Sign Up")
                                .frame(width: 100, height: 25)
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding()
                                .background(Color("PrimaryDarkBlue"))
                                .cornerRadius(20)
                                .foregroundColor(.white)
                        }
                        
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
