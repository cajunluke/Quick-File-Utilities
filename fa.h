/*
 *  fa.h
 *  qfu
 *
 *  Created by Benjamin Fortin on 7/5/10.
 *  Copyright 2010 Benjamin Fortin. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>

#import "qfu-header.h"
#import "NSString+QFUAdditions.h"

NSArray *arrayWithFilenames(const char *files[], NSRange range)
{
	//NSLog(@"%s:%d [%d, %d]", __PRETTY_FUNCTION__, __LINE__, range.location, range.length);
	
	NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:range.length-range.location];
	
	for(int i = range.location; i<range.length; i++)
		[arr addObject:[NSString stringWithFormat:@"%s", files[i]]];
	
	return [NSArray arrayWithArray:arr];
}

void showUsage()
{
	printf("Usage: fa [options] [files]\n");
}
