//
//  SortArray.m
//  Assignment4
//
//  Created by Kevin Cleathero on 2017-04-12.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "SortArray.h"

@implementation SortArray

- (NSArray *)sortArray:(NSArray *)array{
    
//    for(int i = 0; i < array.count; i++){
//        NSLog(@"before sort..%@", array[i]);
//    }

    NSSortDescriptor *sortorder = [NSSortDescriptor sortDescriptorWithKey:nil ascending: YES];
    NSArray * sorted = [array sortedArrayUsingDescriptors: [NSArray arrayWithObject: sortorder]];

//    for(int i = 0; i < sorted.count; i++){
//        NSLog(@"After sort..%@", sorted[i]);
//    }
    
    return sorted;
}


- (NSNumber *)findMedian:(NSArray *)array{
    
    //took formula to calculate median from here ..
    //http://www.statcan.gc.ca/edu/power-pouvoir/ch11/median-mediane/5214872-eng.htm
    
    
 
    //first sort array in ascending order
    NSArray *sortedAscending = (NSArray*)[self sortArray:array];
    
    
    //then calculate
    long count = sortedAscending.count;
    long medianPosition = ((count + 1) / 2);
   
    //NSLog(@"array count is..%ld", count);
    //NSLog(@"medianPosition is..%ld", medianPosition);
    
    //in case the array count is an even number we must calc above and below the "middlePosition"
    //to determine an accurate median value
    if (count % 2){
       //odd do nothing
    } else {
        long positionAbove = medianPosition + 1;
        long positionBelow = medianPosition - 1;
        
        NSNumber *valueAbove = sortedAscending[positionAbove];
        NSNumber *valueBelow = sortedAscending[positionBelow];
        NSNumber *averageMedian = @(([valueAbove doubleValue] + [valueBelow doubleValue]) / 2);
        
        return averageMedian;

    }
  
    return sortedAscending[medianPosition];
    
}


- (NSNumber *)findLowest:(NSArray *)array
{
    __block NSNumber *lowest = array[0];
    
    if(array){
     [array enumerateObjectsUsingBlock:
       ^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
           
           if(obj.intValue < lowest.intValue){
               lowest = obj;
           }
           
       }];
    
    }
    
    
    return lowest;
}

- (NSNumber *)findHighest:(NSArray *)array{
    
    //using 0 to determin the highest negatie number of an array of negative numbers
    //can just use 0  <=
   __block NSNumber *highest = array[0];
    
    printf("variable has %d\n", highest.intValue);
    
    if(array){
        
        //this is mostly an objective c thing as swift 'for loops' are better
        [array enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            //see how using array[0] won't influence getting the highest number
            //printf("Comparison is %d against %d at index %lu\n", obj.intValue, highest.intValue, (unsigned long)idx);
            
            if(obj.intValue > highest.intValue){
                // negative number would blow up potentially it is comparing memory addresses. want value from nsobject
                //in objective c using == on objects will be comparing addressing not so in swift
                
                highest = obj;
            }
        }];
    }
    
    return highest;
}


@end
