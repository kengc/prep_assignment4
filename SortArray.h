//
//  SortArray.h
//  Assignment4
//
//  Created by Kevin Cleathero on 2017-04-12.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SortArray : NSObject

- (NSNumber *)findHighest:(NSArray *)array;
- (NSNumber *)findLowest:(NSArray *)array;
- (NSNumber *)findMedian:(NSArray *)array;
- (NSArray *)sortArray:(NSArray *)array;
@end
