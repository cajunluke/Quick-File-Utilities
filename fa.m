#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// insert code here...
	
	NSLog(@"Hello, World! %s", argv[1]);
	
	
	[pool drain];
	return 0;
}
