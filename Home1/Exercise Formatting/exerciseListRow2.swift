//
//  exerciseListRow2.swift
//  Home1
//
//  Created by Ankit Singhal on 03.02.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct exerciseListRow2: View {
    
    var course: Course
    
    var body: some View {
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
}

struct exerciseListRow2_Previews: PreviewProvider {
    static var previews: some View {
        exerciseListRow2(course: courseData[0])
    }
}
