//
//  BadManager.m
//  PizzaRestaurant
//
//  Created by Jenny Nguyen on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "BadManager.h"

@implementation BadManager

-(BOOL)kitchen:(Kitchen*)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*)toppings {
    
    for (NSString *toppings in toppings) {
        if ([toppings isEqualToString:@"anchovies"]) {
            return NO;
        }
    }
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end
