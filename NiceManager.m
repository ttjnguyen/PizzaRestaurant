//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Jenny Nguyen on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "NiceManager.h"

@implementation NiceManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return  YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}


@end