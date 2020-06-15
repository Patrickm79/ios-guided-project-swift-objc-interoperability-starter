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
// 3: Use @objc to expose properties, classes, methods to Objective-C
// 4: You must have Swift code building and added to target or you wont get file generated.

//@objc(LSIContact) // May be some bugs associated with this
@objc class Contact: NSObject {
    
    @objc var name: String
    @objc var relationship: String?
    
    
    @objc init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
        
        super.init()
    }
    
}
