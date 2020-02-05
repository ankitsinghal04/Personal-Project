//
//  Course.swift
//  Home1
//
//  Created by Ankit Singhal on 19.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct Course: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    var Sub:String
    var Time:String
    var Place:String
    var Focus1:String
    var Focus2:String
    var Focus3:String
    var isFavorite:Bool
    var isFeatured:Bool
    var exercise1:String
    var exercise2:String
    var exerciseDescription:String
    var exerciseDescription2:String
    var pt:String
    
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case Rec = "Recommended for You"
        case Pop = "Popular"
        case featured = "Featured"
    }
    
}
