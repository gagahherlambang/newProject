//
//  User.swift
//  NewProjectGagah
//
//  Created by Gagah on 08/05/20.
//  Copyright © 2020 Gagah. All rights reserved.
//

import Foundation
import UIKit

class User {
    static var shared = User()
    
    var profile : Profile?
    
    init() {
        profile = Profile(id: 0, name: "User")
    }
}

class Profile {
    let id : Int
    var name : String?
    var email : String?
    var password : String?
    
    init(id: Int, name: String? = nil, email: String? = nil, password: String? = nil) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
    }
    
}
