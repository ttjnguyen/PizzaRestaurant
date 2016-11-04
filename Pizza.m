//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Jenny Nguyen on 2016-11-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"
#import "Kitchen.h"

@implementation Pizza

-(instancetype)initWithPizzaSize:(PizzaSize)size andToppigs:(NSArray*)toppings {
    
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

-(NSString*)translateSizeToString {
    
    NSString *pizzaString;
    
    switch (self.size) {
        case 1:
            pizzaString = @"small";
            break;
        case 2:
            pizzaString = @"medium";
            break;
        case 3:
            pizzaString = @"large";
            break;
        default:
            pizzaString = @"invalid size";
            break;
    }
    return [NSString stringWithFormat:@"Your pizza size is %@ and your toppings are %@", pizzaString, self.toppings];

}

@end
