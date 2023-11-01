//
//  DashboardView.swift
//  Clockwork
//
//  Created by Eliana Wang on 10/9/23.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    VStack(spacing: 0) {
                        ZStack {
                            Image("mountain landscape")
                                .resizable()
                                .ignoresSafeArea()
                                .frame(width: geo.size.width, height: geo.size.height * 0.40, alignment: .center)
                            
                            
                            Text("**Clockwork**")
                                .font(.custom("Lato-Regular", size: 70))
                                .foregroundColor(.white)
                            
                        }
                        
                        VStack {
                            HStack {
                                VStack {
                                    HStack {
                                        Image(systemName: "bell.fill")
                                        Text("Notifications")
                                            .font(.custom("Lato-Regular", size: 20))
                                            .lineLimit(1)
                                    } //HStack
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 20)
                                    .foregroundColor(.black.opacity(0.8))
                                    
                                    
                                    Divider()
                                        .frame(width: 140, height: 2.5)
                                        .overlay(.black.opacity(0.7))
                                        .padding(.leading, 20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                                } //VStack
                                
                            } //HStack
                            .padding(.bottom, 0)
                            
                            
                            ScrollView {
                                DayView()
                                
                                StreakView(days: 10)
                                
                                StreakView(days: 5)
                                
                                StreakView(days: 3)
                                    .padding(.bottom, 10)
                            }
                            .frame(height: 215)
                            //.background(.red)
                            
                            
                            NavigationLink(destination: MorningRoutineView().navigationBarBackButtonHidden(true)) {
                                Text("Start Routine")
                                    .frame(width: 150, height: 50)
                                    
                                    .font(.custom("Lato-Regular", size: 20))
                                    .fontWeight(.bold)
                                    .padding()
                                    
                                    .background(Color("PrimaryDarkBlue"))
                                    .cornerRadius(30)
                                    .foregroundColor(.white)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.top, 20)
                            
                            
                        } //VStack
                        .padding(.top, 20)
                        .frame(width: geo.size.width, alignment: .leading)
                        
                    }
                }
                
            }
            .frame(maxHeight: .infinity)
            .background(.white)
            
        }
        .padding(.bottom, 20)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

struct DayView: View {
    var body: some View {
        
        HStack(spacing: 20) {
            //1
            VStack{
                Text("10/28")
                    .font(.custom("Lato-Regular", size: 16))
                    .foregroundColor(.black.opacity(0.7))
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .foregroundColor(.green)
                    .frame(width:40,height: 40)
            }
            
            //2
            VStack{
                Text("10/29")
                    .font(.custom("Lato-Regular", size: 16))
                    .foregroundColor(.black.opacity(0.7))
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .foregroundColor(.red)
                    .frame(width:40,height: 40)
            }
            
            //3
            VStack{
                Text("10/30")
                    .font(.custom("Lato-Regular", size: 16))
                    .foregroundColor(.black.opacity(0.7))
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .foregroundColor(.yellow)
                    .frame(width:40,height: 40)
            }
            
            //4
            VStack{
                Text("10/31")
                    .font(.custom("Lato-Regular", size: 16))
                    .foregroundColor(.black.opacity(0.7))
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .foregroundColor(.yellow)
                    .frame(width:40,height: 40)
            }
            
            //5
            VStack{
                Text("11/01")
                    .font(.custom("Lato-Regular", size: 16))
                    .foregroundColor(.gray.opacity(0.1))
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .foregroundColor(.green)
                    .frame(width:40,height: 40)
            }
        }
        .frame(width: 350, height: 100)
        .background(.gray.opacity(0.1))
        .cornerRadius(30)
        
        /*drop shadow code from https://stackoverflow.com/a/62143452*/
        .overlay(
          RoundedRectangle(cornerRadius: 30)
           .stroke(Color.gray.opacity(0.1), lineWidth: 1)
        )
        .background(
           RoundedRectangle(
             cornerRadius: 30
           )
           .foregroundColor(Color.white)
           .shadow(
            color: Color.black.opacity(0.2),
             radius: 5,
             x: 0,
             y: 5
           )
        )
        
        .padding(.horizontal, 10)
        
        
    }
}

struct StreakView: View {
    var days: Int
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "flame.fill")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .foregroundColor(.orange)
                .frame(width:40,height: 40)
            
            Text("\(days) Day Streak! Keep it up!")
                .font(.custom("Lato-Regular", size: 20))
                .foregroundColor(.black.opacity(0.7))
            
            
        }
        .frame(width: 350, height: 100)
        .background(.gray.opacity(0.1))
        .cornerRadius(30)
        
        /*drop shadow code from https://stackoverflow.com/a/62143452*/
        .overlay(
          RoundedRectangle(cornerRadius: 30)
           .stroke(Color.gray.opacity(0.1), lineWidth: 1)
        )
        .background(
           RoundedRectangle(
             cornerRadius: 30
           )
           .foregroundColor(Color.white)
           .shadow(
            color: Color.black.opacity(0.2),
             radius: 5,
             x: 0,
             y: 5
           )
        )
    }
}
