//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Jenny Nguyen on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"

@class NiceManager;
@class Pizza;

@interface DeliveryService : NSObject

@property (nonatomic, strong) NSMutableArray *allPizzasDelivered;
@property (nonatomic) DeliveryCar *car;

-(void)deliverPizza:(Pizza*)pizza;

@end
