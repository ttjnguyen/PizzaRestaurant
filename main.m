//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "BadManager.h"
#import "NiceManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *makePizza = [[Kitchen alloc]init];
        BadManager *sam = [[BadManager alloc]init];
        NiceManager *jenny = [[NiceManager alloc]init];
        DeliveryService *delivery = [[DeliveryService alloc]init];
        
        jenny.delivery = delivery;
        
        while (YES) {
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            
            NSMutableArray *commandWordsCopy = [commandWords mutableCopy];
            
            NSString *managerName = commandWordsCopy[0];
            
            if ([managerName isEqualToString:@"jenny"]) {
                restaurantKitchen.delegate = greg;
                [commandWordsCopy removeObjectAtIndex:0];
                
            }else if ([managerName isEqualToString:@"sam"]) {
                restaurantKitchen.delegate = steve;
                [commandWordsCopy removeObjectAtIndex:0];
            }

            
            
            
            
            NSLog(@"Input was %@", inputString);
            
            NSMutableArray *toppings = [[NSMutableArray alloc] initWithArray:commandWords];

            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *sizeString = commandWords.firstObject;
            NSMutableArray *commandWordsCopy = [commandWords mutableCopy];
            [commandWordsCopy removeObjectAtIndex:0];
            NSArray *toppings = commandWordsCopy;
            
            Pizza *newOrder = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:commandWordsCopy];
            
            if (newOrder) {
                NSString *newSize = [newOrder sizeToString];
                NSLog(@"Your %@ %@ pizza is ready!", newSize, [commandWordsCopy componentsJoinedByString:@" "]);
            }
            else {
                NSLog(@"Anchovies suck!! Pizza not made >:@");
            }
            
        }
        }

    }
    return 0;
}

