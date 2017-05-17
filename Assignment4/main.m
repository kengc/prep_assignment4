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
        
        NSArray *unsortedArray = @[@-10,@-2,@-4,@-7,@-3,@-3,@-1000,@-10000,@-10328,@-183];
        
        //NSArray *unsortedArray = @[@-25,@-20,@-15,@20,@1];
        //NSArray *unsortedArray = @[@5,@4,@3,@2,@1,@0];
        
        //NSArray *unsortedArray = @[@7,@-2,@5,@10];
        
        //NSArray *unsortedArray = @[@4, @5, @8, @5, @7, @8, @9, @8, @8, @7];
        
        //NSArray *unsortedArray = @[@1,@2,@3, @4];
        
        //NSArray *unsortedArray = @[@26.1,@25.0,@25.2,@24.7,@25.7,@25.6];
        
        //NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects:@24.7,@25.0,@25.2,@25.6,@25.7,@26.1, nil];
        
        
        SortArray *array = [[SortArray alloc] init];
        
        NSLog(@"Highest value is: %@", [array findHighest:unsortedArray]);
        NSLog(@"Lowest value is: %@", [array findLowest:unsortedArray]);
        NSLog(@"Median is: %@", [array findMedian:unsortedArray]);
        NSLog(@"sorted array: %@", [array sortArray:unsortedArray]);
    }
    
    return 0;
}
