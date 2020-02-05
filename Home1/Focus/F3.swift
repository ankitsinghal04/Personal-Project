//
//  F3.swift
//  Home1
//
//  Created by Ankit Singhal on 22.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct F3: View {
    
    var course:Course
    
    var body: some View {
        Image(course.Focus3)
        .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct F3_Previews: PreviewProvider {
    static var previews: some View {
        F3(course: courseData[0])
    }
}
