//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Jenny Nguyen on 2016-11-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

typedef enum size {
    small = 1,
    medium = 2,
    large = 3,
    
}PizzaSize;

@property (nonatomic) NSArray *toppings;
@property (nonatomic) PizzaSize size;

-(instancetype)initWithPizzaSize:(PizzaSize)size andToppigs:(NSArray*)toppings;
+(PizzaSize)selector:(NSString*)sizeString;
-(NSString*)translateSizeToString;




@end
