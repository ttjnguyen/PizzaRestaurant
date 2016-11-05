//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Jenny Nguyen on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryService.h"
@class Pizza;

@interface DeliveryCar : NSObject

-(void)deliverPizza(Pizza*)pizza;

@end
