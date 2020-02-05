//
//  courseList.swift
//  Home1
//
//  Created by Ankit Singhal on 22.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct courseList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        
        
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Show Favorites Only")
            }
            
            ForEach(userData.courses) { course in
                if !self.userData.showFavoritesOnly || course.isFavorite {
                    NavigationLink(
                        destination: CourseDetail(course: course)
                    .environmentObject(self.userData)
                    ) {
                    courseListRow(course: course)
                    }
                }
            }
        }
            
            .navigationBarTitle(Text("All Courses"))
            
        
        
    
    }
        
}

struct courseList_Previews: PreviewProvider {
    static var previews: some View {
        courseList()
        .environmentObject(UserData())
    }
}
