/*
 *  fa.m
 *  qfu
 *
 *  Created by Benjamin Fortin on 7/4/10.
 *  Copyright 2010 Benjamin Fortin. All rights reserved.
 *
 */

#import "fa.h"

int main(int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	//NSLog(@"* %s * %s", __DATE__, __TIME__);
	
	if(argc == 1)
	{
		//no arguments
		showUsage();
		return 0;
	}
	
	QFUSizeUnit requestedUnit = QFUSizeUnitNoUnit;
	NSArray *files = nil;
	
	if(!strcmp(argv[1], "-u"))
	{
		if(argc < 4)
		{
			showUsage();
			return 0;
		}
		
		requestedUnit = sizeUnitFromString(argv[2]);
		
		files = arrayWithFilenames(argv, NSMakeRange(3, argc));
	}
	else
	{
		files = arrayWithFilenames(argv, NSMakeRange(1, argc));
	}

	for(NSString *file in files)
		printf("%s\n", [file UTF8String]);
	
	[pool drain];
	return 0;
}
