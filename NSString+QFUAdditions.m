//
//  NSString+QFUAdditions.m
//  qfu
//
//  Created by Benjamin Fortin on 7/4/10.
//  Copyright 2010 Benjamin Fortin. All rights reserved.
//

#import "NSString+QFUAdditions.h"


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

+ (NSString *)stringWithFilesize:(NSUInteger)sizeInBytes targetUnit:(QFUSizeUnits)unit
{
	NSUInteger sizeInBits = sizeInBytes * 8;
	
	switch (unit)
	{
		case QFUSizeUnitsDecimalBytes:
			return [NSString stringWithFormat:@"%d B", sizeInBytes];
			break;
		case QFUSizeUnitsDecimalKilobytes:
			return [NSString stringWithFormat:@"%f kB", sizeInBytes/1000.0];
			break;
		case QFUSizeUnitsDecimalMegabytes:
			return [NSString stringWithFormat:@"%f MB", sizeInBytes/1000000.0];
			break;
		case QFUSizeUnitsDecimalGigabytes:
			return [NSString stringWithFormat:@"%f GB", sizeInBytes/1000000000.0];
			break;
		case QFUSizeUnitsDecimalTerabytes:
			return [NSString stringWithFormat:@"%f TB", sizeInBytes/1000000000000.0];
			break;
		case QFUSizeUnitsDecimalPetabytes:
			return [NSString stringWithFormat:@"%f PB", sizeInBytes/1000000000000000.0];
			break;
		case QFUSizeUnitsDecimalExabytes:
			return [NSString stringWithFormat:@"%f EB", sizeInBytes/1000000000000000000.0];
			break;
			
		case QFUSizeUnitsBinaryBytes:
			return [NSString stringWithFormat:@"%d B", sizeInBytes];
			break;
		case QFUSizeUnitsBinaryKilobytes:
			return [NSString stringWithFormat:@"%f kiB", sizeInBytes/1024.0];
			break;
		case QFUSizeUnitsBinaryMegabytes:
			return [NSString stringWithFormat:@"%f MiB", sizeInBytes/1048576.0];
			break;
		case QFUSizeUnitsBinaryGigabytes:
			return [NSString stringWithFormat:@"%f GiB", sizeInBytes/1073741824.0];
			break;
		case QFUSizeUnitsBinaryTerabytes:
			return [NSString stringWithFormat:@"%f TiB", sizeInBytes/1099511627776.0];
			break;
		case QFUSizeUnitsBinaryPetabytes:
			return [NSString stringWithFormat:@"%f PiB", sizeInBytes/1125899906842624.0];
			break;
		case QFUSizeUnitsBinaryExabytes:
			return [NSString stringWithFormat:@"%f EiB", sizeInBytes/1152921504606846976.0];
			break;
			
			
		case QFUSizeUnitsDecimalBits:
		return [NSString stringWithFormat:@"%d b", sizeInBits];
			break;
		case QFUSizeUnitsDecimalKilobits:
			return [NSString stringWithFormat:@"%f kb", sizeInBits/1000.0];
			break;
		case QFUSizeUnitsDecimalMegabits:
			return [NSString stringWithFormat:@"%f Mb", sizeInBits/1000000.0];
			break;
		case QFUSizeUnitsDecimalGigabits:
			return [NSString stringWithFormat:@"%f Gb", sizeInBits/1000000000.0];
			break;
		case QFUSizeUnitsDecimalTerabits:
			return [NSString stringWithFormat:@"%f Tb", sizeInBits/1000000000000.0];
			break;
		case QFUSizeUnitsDecimalPetabits:
			return [NSString stringWithFormat:@"%f Pb", sizeInBits/1000000000000000.0];
			break;
		case QFUSizeUnitsDecimalExabits:
			return [NSString stringWithFormat:@"%f Eb", sizeInBits/1000000000000000000.0];
			break;
			
		case QFUSizeUnitsBinaryBits:
			return [NSString stringWithFormat:@"%d b", sizeInBits];
			break;
		case QFUSizeUnitsBinaryKilobits:
			return [NSString stringWithFormat:@"%f kib", sizeInBits/1024.0];
			break;
		case QFUSizeUnitsBinaryMegabits:
			return [NSString stringWithFormat:@"%f Mib", sizeInBits/1048576.0];
			break;
		case QFUSizeUnitsBinaryGigabits:
			return [NSString stringWithFormat:@"%f Gib", sizeInBits/1073741824.0];
			break;
		case QFUSizeUnitsBinaryTerabits:
			return [NSString stringWithFormat:@"%f Tib", sizeInBits/1099511627776.0];
			break;
		case QFUSizeUnitsBinaryPetabits:
			return [NSString stringWithFormat:@"%f Pib", sizeInBits/1125899906842624.0];
			break;
		case QFUSizeUnitsBinaryExabits:
			return [NSString stringWithFormat:@"%f Eib", sizeInBits/1152921504606846976.0];
			break;
		default:
			return [NSString stringWithFormat:@"%d %d", sizeInBytes, unit];
			break;
	}
}

@end
