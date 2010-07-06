/*
 *  qfu-header.h
 *  qfu
 *
 *  Created by Benjamin Fortin on 7/5/10.
 *  Copyright 2010 Benjamin Fortin. All rights reserved.
 *
 */

typedef enum
{
	QFUSizeUnitNoUnit,				// 0
	QFUSizeUnitDecimalBytes,		// 1
	QFUSizeUnitDecimalKilobytes,
	QFUSizeUnitDecimalMegabytes,
	QFUSizeUnitDecimalGigabytes,
	QFUSizeUnitDecimalTerabytes,
	QFUSizeUnitDecimalPetabytes,
	QFUSizeUnitDecimalExabytes,
	QFUSizeUnitBinaryBytes,			// 8
	QFUSizeUnitBinaryKilobytes,
	QFUSizeUnitBinaryMegabytes,
	QFUSizeUnitBinaryGigabytes,
	QFUSizeUnitBinaryTerabytes,
	QFUSizeUnitBinaryPetabytes,
	QFUSizeUnitBinaryExabytes,
	QFUSizeUnitDecimalBits,			// 15
	QFUSizeUnitDecimalKilobits,
	QFUSizeUnitDecimalMegabits,
	QFUSizeUnitDecimalGigabits,
	QFUSizeUnitDecimalTerabits,
	QFUSizeUnitDecimalPetabits,
	QFUSizeUnitDecimalExabits,
	QFUSizeUnitBinaryBits,			// 22
	QFUSizeUnitBinaryKilobits,
	QFUSizeUnitBinaryMegabits,
	QFUSizeUnitBinaryGigabits,
	QFUSizeUnitBinaryTerabits,
	QFUSizeUnitBinaryPetabits,
	QFUSizeUnitBinaryExabits		// 28
} QFUSizeUnit;

QFUSizeUnit sizeUnitFromString(const char *str)
{
	return QFUSizeUnitNoUnit;
}
