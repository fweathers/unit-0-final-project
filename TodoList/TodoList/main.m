//
//  main.m
//  TodoList
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager: NSObject

@property (nonatomic) NSMutableArray *lists;

//-(void)arr:(NSMutableArray)
//-(void)print;

@end

@interface list: NSObject
@end

@interface item: NSObject
@end

@implementation Manager



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
