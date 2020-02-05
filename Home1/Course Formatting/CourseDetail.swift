//
//  CourseDetail.swift
//  Home1
//
//  Created by Ankit Singhal on 19.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI
import UIKit

struct BeginButton: View {
    var body: some View {
        NavigationLink(destination: ExerciseDetail()){
               Text("Begin!")
             }.frame(width: 330, height: 40)
                 .background(Color.blue)
                .foregroundColor(.white)
                 .font(.headline)
             .cornerRadius(30)
    }
}




struct CourseDetail: View {
    @EnvironmentObject var userData: UserData
    var course:Course
    
    var courseIndex: Int {
        userData.courses.firstIndex(where: { $0.id == course.id })!
    }
    
    var body: some View {

        ZStack {
            
            List{
                
                ZStack (alignment: .bottom) {
                    Image(course.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                    
                    Rectangle()
                        .frame(height: 40)
                        .opacity(0.25)
                        .blur(radius: 30)
                }
                .listRowInsets(EdgeInsets())
                
                VStack (alignment: .leading) {
                    
                    HStack {
                        Text(course.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                        
                        Button(action: {
                            self.userData.courses[self.courseIndex]
                                .isFavorite.toggle()
                        }) {
                            if self.userData.courses[self.courseIndex]
                                .isFavorite {
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.yellow)
                            } else {
                                Image(systemName: "star")
                                    .foregroundColor(Color.gray)
                            }
                        }
                        
                    }
                    
                    HStack{
                        
                    Text(course.Time)
            .foregroundColor(Color.secondaryLabel)
                        .font(.callout)
                        .lineLimit(0)
                        .lineSpacing(6)
                        
            
                        Text(course.pt)
            .foregroundColor(Color.secondaryLabel)
                        .font(.callout)
                        .lineLimit(nil)
                        .lineSpacing(6)

                        Text(course.Place)
            .foregroundColor(Color.secondaryLabel)
                        .font(.callout)
                        .lineLimit(nil)
                        .lineSpacing(6)
                            
                    }.padding(.bottom, 10)
                    
                    Text(course.description)
                        .font(.body)
                    .padding(.bottom, 10)
                }
                
                
                VStack (alignment: .leading) {
                    
                    Text("Focuses")
                        .font(.title)
                        .fontWeight(.medium)
                    
                    HStack{
                   
                    Image(course.Focus1)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                        .padding(.leading, 10)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        
                        
                    Image(course.Focus2)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                        .padding(.leading, 10)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        
                    Image(course.Focus3)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                        .padding(.leading, 10)
                        .padding(.top, 10)
                        .padding(.bottom, 10)

                    }
                    
                    
                    
                }
                VStack (alignment:.leading){
                Text("Exercise Overview")
                .font(.title)
                .fontWeight(.medium)
                    HStack {
                        Image(course.imageName)
                            .resizable()
                            .frame(width: 50, height: 50)
                            VStack(alignment:.leading){
                                Text(verbatim: course.exercise1)
                                    .font(.headline)
                                Text(verbatim: course.exerciseDescription)
                                    .font(.subheadline)
                            .foregroundColor(.secondaryLabel)
                            }
                        Spacer()
                    }
                    HStack {
                        Image(course.imageName)
                            .resizable()
                            .frame(width: 50, height: 50)
                            VStack(alignment:.leading){
                                Text(verbatim: course.exercise2)
                                    .font(.headline)
                                Text(verbatim: course.exerciseDescription2)
                                    .font(.subheadline)
                            .foregroundColor(.secondaryLabel)
                            }
                        Spacer()
                    }
                }
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(height: 70)
                
                
                
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
            
            
            ZStack (alignment: .bottom){
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            BeginButton()
            .shadow(radius: 10)
                .padding()
            }
            
        }
}
}



struct CourseDetail_Previews:
PreviewProvider {
    static var previews: some View {
        return CourseDetail(course: courseData[3])
        .environmentObject(UserData())
    }
}
