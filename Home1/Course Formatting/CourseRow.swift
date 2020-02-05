//
//  CourseRow.swift
//  Home1
//
//  Created by Ankit Singhal on 19.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct CourseRow: View {
    
    var categoryName:String
    var courses:[Course]
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
                .font(.title)
            
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top) {
                    ForEach (self.courses, id: \.name) { course in
                        
                        NavigationLink(destination: CourseDetail(course: course))
                        {
                        
                            CourseItem(course: course)
                            .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
                
            }
        }
        
        
        
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow(categoryName: "Recommended for You", courses: courseData)
    }
}
