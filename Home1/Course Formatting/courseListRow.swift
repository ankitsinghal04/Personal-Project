//
//  courseListRow.swift
//  Home1
//
//  Created by Ankit Singhal on 22.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct courseListRow: View {
    
    var course: Course
    
    var body: some View {
        HStack {
            Image(course.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(verbatim: course.name)
            Spacer()

            if course.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct courseListRow_Previews: PreviewProvider {
    static var previews: some View {
        courseListRow(course: courseData[0])
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
