//
//  UserData.swift
//  Home1
//
//  Created by Ankit Singhal on 22.01.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var courses = courseData
}

