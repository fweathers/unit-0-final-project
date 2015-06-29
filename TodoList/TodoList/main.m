//
//  main.m
//  TodoList
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Manager;
@class List;
@class Item;

@interface Manager: NSObject

@property (nonatomic) NSMutableArray *lists;

- (void)start;

@end

@interface List: NSObject

@property (nonatomic) NSMutableArray *items;

// Calls scanf and creates a new Item and adds that item to items array
-(Item *)scanItem;

@end

@interface Item: NSObject

@property (nonatomic) NSString *content;

@end


@implementation Manager

- (List *)createList
{
    if (!self.lists) {
        self.lists = [[NSMutableArray alloc] init];
    }
    
    List *newList = [[List alloc] init];
    [self.lists addObject:newList];
    return newList;
}


-(int)showMenu
{
    printf("What would you like to do?\n0. Exit\n1. Create a list\n2. Print lists\n3. Remove content\n");
    
    int input;
    scanf("%d", &input);
    
    return input;
}

-(void)printLists
{
    // For each list in self.lists
    for (List *list in self.lists) {
            printf("%s\n", [[NSString stringWithFormat:@"%@", list] cStringUsingEncoding:NSUTF8StringEncoding]);
    }
}

//-(List *)deleteContent
//{
//
//}


-(void)start
{
    
    while (true) {
        int menuPicked = [self showMenu];
        
        if (menuPicked == 0) {
            break;
        }
        else if (menuPicked == 1){
            List *list = [self createList];
            while (true) {
                Item *newItem = [list scanItem];
                if (!newItem) break;
            }
        }
        else if (menuPicked == 2) {
            [self printLists];
        }
        else if (menuPicked == 3) {
            printf("What would you like to remove?");
            
            
            int deleteContent;
            scanf("%d", &deleteContent);
            
        }
    }
}

@end

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
@end

@implementation Item

-(NSString *)description
{
    return self.content;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        Manager *manager = [[Manager alloc] init];
        [manager start];
    }
    return 0;
}
