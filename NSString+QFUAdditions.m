//
//  NSString+QFUAdditions.m
//  qfu
//
//  Created by Benjamin Fortin on 7/4/10.
//  Copyright 2010 Benjamin Fortin. All rights reserved.
//

#import "NSString+QFUAdditions.h"
#import "qfu-header.h"

@implementation NSString (QFUAdditions)

+ (NSString *)stringWithFilesize:(NSUInteger)sizeInBytes
{
	if(sizeInBytes>1152921504606846976.0)
	{
		return [NSString stringWithFormat:@"%f EiB", sizeInBytes/1152921504606846976.0];
	}
	
	if(sizeInBytes>1125899906842624.0)
	{
		return [NSString stringWithFormat:@"%f PiB", sizeInBytes/1125899906842624.0];
	}
	
	if(sizeInBytes>1099511627776.0)
	{
		return [NSString stringWithFormat:@"%f TiB", sizeInBytes/1099511627776.0];
	}
	
	if(sizeInBytes>1073741824.0)
	{
		return [NSString stringWithFormat:@"%f GiB", sizeInBytes/1073741824.0];
	}
	
	if(sizeInBytes>1048576.0)
	{
		return [NSString stringWithFormat:@"%f MiB", sizeInBytes/1048576.0];
	}
	
	if(sizeInBytes>1024.0)
	{
		return [NSString stringWithFormat:@"%f kiB", sizeInBytes/1024.0];
	}
	
	return [NSString stringWithFormat:@"%d B", sizeInBytes];
}

+ (NSString *)stringWithFilesize:(NSUInteger)sizeInBytes targetUnit:(QFUSizeUnit)unit
{
	NSUInteger sizeInBits = sizeInBytes * 8;
	
	switch (unit)
	{
		case QFUSizeUnitDecimalBytes:
			return [NSString stringWithFormat:@"%d B", sizeInBytes];
			break;
		case QFUSizeUnitDecimalKilobytes:
			return [NSString stringWithFormat:@"%f kB", sizeInBytes/1000.0];
			break;
		case QFUSizeUnitDecimalMegabytes:
			return [NSString stringWithFormat:@"%f MB", sizeInBytes/1000000.0];
			break;
		case QFUSizeUnitDecimalGigabytes:
			return [NSString stringWithFormat:@"%f GB", sizeInBytes/1000000000.0];
			break;
		case QFUSizeUnitDecimalTerabytes:
			return [NSString stringWithFormat:@"%f TB", sizeInBytes/1000000000000.0];
			break;
		case QFUSizeUnitDecimalPetabytes:
			return [NSString stringWithFormat:@"%f PB", sizeInBytes/1000000000000000.0];
			break;
		case QFUSizeUnitDecimalExabytes:
			return [NSString stringWithFormat:@"%f EB", sizeInBytes/1000000000000000000.0];
			break;
			
		case QFUSizeUnitBinaryBytes:
			return [NSString stringWithFormat:@"%d B", sizeInBytes];
			break;
		case QFUSizeUnitBinaryKilobytes:
			return [NSString stringWithFormat:@"%f kiB", sizeInBytes/1024.0];
			break;
		case QFUSizeUnitBinaryMegabytes:
			return [NSString stringWithFormat:@"%f MiB", sizeInBytes/1048576.0];
			break;
		case QFUSizeUnitBinaryGigabytes:
			return [NSString stringWithFormat:@"%f GiB", sizeInBytes/1073741824.0];
			break;
		case QFUSizeUnitBinaryTerabytes:
			return [NSString stringWithFormat:@"%f TiB", sizeInBytes/1099511627776.0];
			break;
		case QFUSizeUnitBinaryPetabytes:
			return [NSString stringWithFormat:@"%f PiB", sizeInBytes/1125899906842624.0];
			break;
		case QFUSizeUnitBinaryExabytes:
			return [NSString stringWithFormat:@"%f EiB", sizeInBytes/1152921504606846976.0];
			break;
			
			
		case QFUSizeUnitDecimalBits:
		return [NSString stringWithFormat:@"%d b", sizeInBits];
			break;
		case QFUSizeUnitDecimalKilobits:
			return [NSString stringWithFormat:@"%f kb", sizeInBits/1000.0];
			break;
		case QFUSizeUnitDecimalMegabits:
			return [NSString stringWithFormat:@"%f Mb", sizeInBits/1000000.0];
			break;
		case QFUSizeUnitDecimalGigabits:
			return [NSString stringWithFormat:@"%f Gb", sizeInBits/1000000000.0];
			break;
		case QFUSizeUnitDecimalTerabits:
			return [NSString stringWithFormat:@"%f Tb", sizeInBits/1000000000000.0];
			break;
		case QFUSizeUnitDecimalPetabits:
			return [NSString stringWithFormat:@"%f Pb", sizeInBits/1000000000000000.0];
			break;
		case QFUSizeUnitDecimalExabits:
			return [NSString stringWithFormat:@"%f Eb", sizeInBits/1000000000000000000.0];
			break;
			
		case QFUSizeUnitBinaryBits:
			return [NSString stringWithFormat:@"%d b", sizeInBits];
			break;
		case QFUSizeUnitBinaryKilobits:
			return [NSString stringWithFormat:@"%f kib", sizeInBits/1024.0];
			break;
		case QFUSizeUnitBinaryMegabits:
			return [NSString stringWithFormat:@"%f Mib", sizeInBits/1048576.0];
			break;
		case QFUSizeUnitBinaryGigabits:
			return [NSString stringWithFormat:@"%f Gib", sizeInBits/1073741824.0];
			break;
		case QFUSizeUnitBinaryTerabits:
			return [NSString stringWithFormat:@"%f Tib", sizeInBits/1099511627776.0];
			break;
		case QFUSizeUnitBinaryPetabits:
			return [NSString stringWithFormat:@"%f Pib", sizeInBits/1125899906842624.0];
			break;
		case QFUSizeUnitBinaryExabits:
			return [NSString stringWithFormat:@"%f Eib", sizeInBits/1152921504606846976.0];
			break;
		default:
			return [NSString stringWithFormat:@"%d %d", sizeInBytes, unit];
			break;
	}
}

@end
