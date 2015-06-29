//
//  main.m
//  TodoList
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager: NSObject

//@property (nonatomic) NSMutableArray *listTopic;


- (void)createListCategory;
- (void)removeListCategory;
- (void)editListCategory;
- (void)listCategoryDone;
- (void)listCategoryActive;
- (void)listCategoryPriority;
- (void)showList;



@end

@interface TaskList: NSObject
@end

@interface Item: NSObject
@end

@implementation Manager

- (void) createListCategory: (NSMutableArray *)firstList {
    //NSLog(@"What type of list are you making?");
    //lists options: new list, add item, remove item, mark item done, mark item done
    NSLog(@"\n1)Show List\n2)Create List\n3)Remove list\n4)Edit list\n5)Item Done");
    int option;
    scanf("%d", &option);
    if (option == '1') {
        [m listTopic];
    }

    
    
    char c[256];
    scanf("%s", c);
    
    NSString *s = [NSString stringWithFormat:@"%s", c];
    NSLog(@"%@", s);

    if (!_listTopic) {
        _listTopic = [[NSMutableArray alloc]init];
        NSLog(@"%@", _listTopic);
    }
    //if the item is not a list topic, then create one
}

//- (void)addItem: (NSString *)chore {
//    NSLog(@"%@", chore);
//}

//- (void)removeItem: (NSString *)chore {
//    
//}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //NSMutableArray *arr = [[NSMutableArray alloc] init];
        Manager *m = [[Manager alloc] init];
        [m createListCategory];

//        if () {
//            NSLog(@"%s", buf);
//        }
//        NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:3];
//        for (int i = 0; i < 3; i++) {
//            char buf;
//            scanf("%s", &buf);
//            NSString *str = [NSString stringWithCString:buf encoding:NSASCIIStringEncoding];
//            [arr addObject:str];
//        }
    
    }
    return 0;
}
