//
//  List.m
//  TodoList
//
//  Created by Felicia Weathers on 6/29/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "List.h"

@implementation List

-(NSString *)description
{
    // What gets printed when the object gets printed
    return [NSString stringWithFormat:@"%@", self.items];
}

-(Item *)scanItem
{
    if (!self.items) {
        self.items = [[NSMutableArray alloc] init];
    }
    
    printf("What would you like to add to your list?\n");
    
    char input[1024];
    scanf("%s", input);
    if (strcmp(input, "0") == 0) {
        return nil;
    }
    
    Item *item = [[Item alloc] init];
    item.content = @(input);
    
    [self.items addObject:item];
    
    return item;
}

-(NSMutableArray *)getItems
{
    return self.items;
}

@end
