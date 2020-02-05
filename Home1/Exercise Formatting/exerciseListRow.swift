//
//  exerciseListRow.swift
//  Home1
//
//  Created by Ankit Singhal on 03.02.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct exerciseListRow: View {
    
    var course: Course
    
    var body: some View {
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
}
}

struct exerciseListRow_Previews: PreviewProvider {
    static var previews: some View {
        exerciseListRow(course: courseData[0])
    }
}

