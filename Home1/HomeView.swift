//
//  HomeView.swift
//  Home1
//
//  Created by Ankit Singhal on 19.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories:[String:[Course]] {
        Dictionary(
            grouping: courseData,
            by: {$0.category.rawValue}
        
        )
    }
    
    var featured: [Course] {
        courseData.filter { $0.isFeatured }
    }
    
    var course: Course
    
    var body: some View {
        NavigationView{
            List {
                
                FeaturedCourses(courses: featured, course: courseData[0])
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .listRowInsets(EdgeInsets())
                
                
                ForEach(categories.keys.sorted(),id: \String.self){
                key in
                CourseRow(categoryName: "\(key)", courses: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
                }
                
                NavigationLink(destination: courseList()) {
                    Text("See All")
                }
                }
                
               
            
        
            
        .navigationBarTitle(Text("Today"))
            
            
            
        }
    }
}

struct FeaturedCourses: View {
    var courses: [Course]
    var course: Course
    var body: some View {
        Image(course.imageName)
        .resizable()
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(course: courseData[0])
        .environmentObject(UserData())
        
    }
}
