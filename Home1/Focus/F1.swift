//
//  F1.swift
//  Home1
//
//  Created by Ankit Singhal on 22.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI


struct F1: View {
    
    var course:Course
    
    var body: some View {
        
        Image(course.Focus1)
        .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct F1_Previews: PreviewProvider {
    static var previews: some View {
        F1(course: courseData[0])
    }
}
