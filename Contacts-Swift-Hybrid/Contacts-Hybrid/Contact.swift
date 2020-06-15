//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Patrick Millet on 6/15/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation


// Why class and no struct?
// Swift structs are not in obj-c
// struct in obj-c is fine from C

// Rules: Must use a class
// 2: You need to subclass from NSObject
// 3: 
class Contact: NSObject {
    
    var name: String
    var relationship: String?
    
    
    init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
        
        super.init()
    }
    
}
