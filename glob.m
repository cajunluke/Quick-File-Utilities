#import <Foundation/Foundation.h>

void showUsage();

int main (int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
		
	printf("File Glob test %s\n\n", argv[0]);
	
	for(int i=0; i<argc; i++)
	{
		printf("[%d]: %s\n", i, argv[i]);
	}
	
	[pool drain];
	return 0;
}
