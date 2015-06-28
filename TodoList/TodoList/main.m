//
//  main.m
//  TodoList
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager: NSObject

@property (nonatomic) NSMutableArray *listTopic;

- (void)createListCategory;
- (void)removeListCategory;
- (void)editListCategory;
- (void)listCategoryDone;
- (void)listCategoryActive;
- (void)listCategoryPriority;



@end

@interface TaskList: NSObject
@end

@interface Item: NSObject
@end

@implementation Manager

- (NSMutableArray *)listTopic {
    NSLog(@"What would you like to do?");
    //lists options: new list, add item, remove item, mark item done, mark item done
    
    if (!_listTopic) {
        _listTopic = [[NSMutableArray alloc]init];
    }
    return _listTopic; //if the item is not a list topic, then create one
}

- (void)addItem: (NSString *)chore {
    NSLog(@"%@", chore);
}

- (void)removeItem: (NSString *)chore {
    
}






- (void)print {
    NSLog(@"\n1)Add item to list\n2)Remove item from list\n3)Create new list");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *arr = [[NSMutableArray alloc] init];
        Manager *m = [[Manager alloc] init];
        [m print];
        if (print == buf) {
            NSLog(@"%s", buf);
        }
//        NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:3];
//        for (int i = 0; i < 3; i++) {
            char buf[100];
            scanf("%s", buf);
//            NSString *str = [NSString stringWithCString:buf encoding:NSASCIIStringEncoding];
//            [arr addObject:str];
//        }
    
    }
    return 0;
}
