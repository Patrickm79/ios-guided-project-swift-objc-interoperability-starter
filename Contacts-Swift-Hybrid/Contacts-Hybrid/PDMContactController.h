//
//  PDMContactController.h
//  Contacts-Hybrid
//
//  Created by Patrick Millet on 6/15/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Foward class declaration (must use this for Swift -> Objecitve-C)
// You will get build cycle and random errors if you try to import the auto generated Swift header file
@class Contact;
// @protocol ContactDelegate;

NS_ASSUME_NONNULL_BEGIN
// Renames code for Swift.
NS_SWIFT_NAME(ContactController)
@interface PDMContactController : NSObject

// collection of contacts

// lightweight generics
// nonnull -> Concerete type (not optional)
// nullable -> Optional type

@property (readonly, copy, nonatomic) NSArray<Contact *> *contacts;

@end

NS_ASSUME_NONNULL_END
