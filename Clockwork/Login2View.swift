//
//  Login2View.swift
//  Clockwork
//
//  Created by Eliana Wang on 11/1/23.
//

import SwiftUI

struct Login2View: View {
    @State var username: String = ""
    @State var password: String = ""
    
    @StateObject private var routineStepViewModel = RoutineStepViewModel()
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    VStack(spacing: 0) {
                        ZStack {
                            Image("mountain landscape")
                                .resizable()
                                .ignoresSafeArea()
                                .frame(width: geo.size.width, height: geo.size.height * 0.15, alignment: .center)
                                
                            
                            Text("**Clockwork**")
                                .font(.custom("Lato-Regular", size: 50))
                                .foregroundColor(.white)
                            
                        }
                    }
                    
                    /*Form design from https://www.youtube.com/watch?v=DwkHkXQocBs*/
                    VStack {
                        Form {
                            Section {
                                TextField("Username", text: $username)
                                    .autocapitalization(.none)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                SecureField("Password", text: $password)
                                    .autocapitalization(.none)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                            } header: {
                                Text("Account Details")
                            }
                            
                            
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color("PrimaryDarkBlue"))
             
                                
                                    Text("Log in")
                                        .font(.custom("Lato-Regular", size: 18))
                                        .foregroundColor(Color.white)
                                
                            }.background(
                                NavigationLink("", destination: ClockworkTabView()
                                    .environmentObject(routineStepViewModel).navigationBarBackButtonHidden(true))
                                    .opacity(0)
                            )
                            
                            
                            
                            
                        }.scrollContentBackground(.hidden)
                            .background(.white)
                        
                        
                        
                        Spacer()

                        
                    }
                    
                    
                    
                }
                
            }
                .frame(maxHeight: .infinity)
                .background(.white)
        }
            

    }
}

struct Login2View_Previews: PreviewProvider {
    static var previews: some View {
        Login2View()
    }
}
