//
//  CourseItem.swift
//  Home1
//
//  Created by Ankit Singhal on 19.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI
import UIKit
extension Color {

static var label: Color {
    return Color(UIColor.label)
}

static var secondaryLabel: Color {
    return Color(UIColor.secondaryLabel)
}

static var tertiaryLabel: Color {
    return Color(UIColor.tertiaryLabel)
}

static var quaternaryLabel: Color {
    return Color(UIColor.quaternaryLabel)
}
}

struct CourseItem: View {
    
    var course:Course
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16.0) {
            Image(course.imageName)
                .resizable()
                    .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5.0) {
            Text(course.name)
                .font(.headline)
                .foregroundColor(Color.label)
            Text(course.description)
                .font(.subheadline)
                .foregroundColor(Color.secondaryLabel)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 40)
            
            }
            
            
            
                
            
        }
        
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem(course: courseData[0])
    }
}
