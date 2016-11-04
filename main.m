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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *makePizza = [[Kitchen alloc]init];
        
        while (YES) {
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *sizeString = commandWords.firstObject;
            NSMutableArray *commandWordsCopy = [commandWords mutableCopy];
            [commandWordsCopy removeObjectAtIndex:0];
            NSArray *toppings = commandWordsCopy;
            
            PizzaSize aSize = [Pizza selector:sizeString];
            [resturantKitchen] makePizzaWithSize:size andToppings:[toppings];
            
        }

    }
    return 0;
}

