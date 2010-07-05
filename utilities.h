/*
 *  utilities.h
 *  qfu
 *
 *  Created by Benjamin Fortin on 7/5/10.
 *  Copyright 2010 Benjamin Fortin. All rights reserved.
 *
 */

typedef enum
{
	QFUSizeUnitsDecimalBytes,		// 0
	QFUSizeUnitsDecimalKilobytes,
	QFUSizeUnitsDecimalMegabytes,
	QFUSizeUnitsDecimalGigabytes,
	QFUSizeUnitsDecimalTerabytes,
	QFUSizeUnitsDecimalPetabytes,
	QFUSizeUnitsDecimalExabytes,
	QFUSizeUnitsBinaryBytes,		// 7
	QFUSizeUnitsBinaryKilobytes,
	QFUSizeUnitsBinaryMegabytes,
	QFUSizeUnitsBinaryGigabytes,
	QFUSizeUnitsBinaryTerabytes,
	QFUSizeUnitsBinaryPetabytes,
	QFUSizeUnitsBinaryExabytes,
	QFUSizeUnitsDecimalBits,		// 14
	QFUSizeUnitsDecimalKilobits,
	QFUSizeUnitsDecimalMegabits,
	QFUSizeUnitsDecimalGigabits,
	QFUSizeUnitsDecimalTerabits,
	QFUSizeUnitsDecimalPetabits,
	QFUSizeUnitsDecimalExabits,
	QFUSizeUnitsBinaryBits,			// 21 
	QFUSizeUnitsBinaryKilobits,
	QFUSizeUnitsBinaryMegabits,
	QFUSizeUnitsBinaryGigabits,
	QFUSizeUnitsBinaryTerabits,
	QFUSizeUnitsBinaryPetabits,
	QFUSizeUnitsBinaryExabits		// 27
} QFUSizeUnits;
