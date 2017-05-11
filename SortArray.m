//
//  SortArray.m
//  Assignment4
//
//  Created by Kevin Cleathero on 2017-04-12.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "SortArray.h"

@implementation SortArray

- (NSNumber *)findHighest:(NSArray *)array{
    
    //using 0 to determin the highest negatie number of an array of negative numbers
    //can just use 0  <=
   __block NSNumber *highest = array[0];
    
    printf("variable has %d\n", highest.intValue);
    
    if(array){
        
        //this is mostly an objective c thing as swift 'for loops' are better
        [array enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            //see how using array[0] won't influence getting the highest number
            printf("Comparison is %d against %d at index %lu\n", obj.intValue, highest.intValue, (unsigned long)idx);
            
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
