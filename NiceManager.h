//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Jenny Nguyen on 2016-11-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"

@interface NiceManager : NSObject<KitchenDelegate>

-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end
