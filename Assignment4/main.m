//
//  main.m
//  Assignment4
//
//  Created by Kevin Cleathero on 2017-04-12.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "SortArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //NSArray *unsortedArray = @[@-10,@-2,@-4,@-7,@-3,@-3,@-1000,@-10000,@-10328,@-183,@-4];
        
        NSArray *unsortedArray = @[@-25,@-20,@-15,@20,@1];
        
        SortArray *array = [[SortArray alloc] init];
        
        NSLog(@"Highest value is: %@", [array findHighest:unsortedArray]);
    }
    
    return 0;
}
