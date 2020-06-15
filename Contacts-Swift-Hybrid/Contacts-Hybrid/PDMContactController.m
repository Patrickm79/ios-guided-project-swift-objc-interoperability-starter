//
//  PDMContactController.m
//  Contacts-Hybrid
//
//  Created by Patrick Millet on 6/15/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "PDMContactController.h"
#import "Contacts_Hybrid-Swift.h"

// Private properties -> class extenstion
// Swift extension are like categories
@interface PDMContactController ()

@property NSMutableArray<Contact *> *internalContacts;

@end

@implementation PDMContactController

- (instancetype)init {
    self = [super init];
    if (self) {
        
        // nil pointer when called will do nothing, or it will return 0 if asked a "question"
        
        _internalContacts = [[NSMutableArray alloc] init];
        
        // how to use Swift in Objective-C?
        [_internalContacts addObject:[[Contact alloc] initWithName:@"Patrick" relationship:@"Me"]];
        [_internalContacts addObject:[[Contact alloc] initWithName:@"Laura" relationship:@"Mom"]];
    }
    return self;
}


// getter -> make it a computed property by using our internal representation and making it readonly

-(NSArray<Contact*> *)contacts {
    return [self.internalContacts copy]; // mutable -> const (var -> let)
}

@end
