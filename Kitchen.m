//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen


-(Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    
    Pizza *pizza = [[Pizza alloc] initWithPizzaSize:size andToppigs:toppings];
    
    return pizza;
    
}

@end

