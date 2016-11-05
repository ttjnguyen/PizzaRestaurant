//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Jenny Nguyen on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;

@protocol KitchenDelegate <NSObject>

(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
(void)kitchenDidMakePizza:(Pizza *)pizza;

@optional

-(void)kitchenDidMakePizza:(Pizza*)pizza;

@end
