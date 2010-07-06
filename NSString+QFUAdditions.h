//
//  NSString+QFUAdditions.h
//  qfu
//
//  Created by Benjamin Fortin on 7/4/10.
//  Copyright 2010 Benjamin Fortin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "qfu-header.h"

@interface NSString (QFUAdditions)

+ (NSString *)stringWithFilesize:(NSUInteger)size;
+ (NSString *)stringWithFilesize:(NSUInteger)size targetUnit:(QFUSizeUnit)unit;

@end
