#import <Foundation/Foundation.h>
#import "utilities.h"
#import "NSString+QFUAdditions.h"

void showUsage();


int main (int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	printf("File Average %s\n\n", argv[0]);
		
	srandom(time(NULL));
	
	for(int i=0; i<50; i++)
	{
		NSInteger num = random() % NSIntegerMax;
		NSString *str = [NSString stringWithFilesize:num];
		printf("%ld bytes = %s\n", num, [str UTF8String]);
	}
	
	printf("\n===========================================\n\n");
	
	for(int i=0; i<50; i++)
	{
		NSInteger num = random() % NSIntegerMax;
		NSString *str = [NSString stringWithFilesize:num targetUnit:(random()%28)];
		printf("%ld bytes = %s\n", num, [str UTF8String]);
	}
	
	[pool drain];
	return 0;
}

void showUsage()
{
	printf("Usage: fa [options] [files]");
}
