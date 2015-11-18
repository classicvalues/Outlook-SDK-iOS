/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#ifndef MSOUTLOOKRECURRENCERANGE_H
#define MSOUTLOOKRECURRENCERANGE_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

#import "MSOutlookRecurrenceRangeType.h"
#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSOutlookRecurrenceRange
 *
 */
@interface MSOutlookRecurrenceRange : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property type
 *
 */
@property (nonatomic,  setter=setType:, getter=type) MSOutlookRecurrenceRangeType type;

- (void)setTypeString:(NSString *)string;

/** Property startDate
 *
 */
@property (nonatomic,  copy, setter=setStartDate:, getter=startDate) NSDate * startDate;

/** Property endDate
 *
 */
@property (nonatomic,  copy, setter=setEndDate:, getter=endDate) NSDate * endDate;

/** Property recurrenceTimeZone
 *
 */
@property (nonatomic,  copy, setter=setRecurrenceTimeZone:, getter=recurrenceTimeZone) NSString * recurrenceTimeZone;

/** Property numberOfOccurrences
 *
 */
@property (nonatomic,  setter=setNumberOfOccurrences:, getter=numberOfOccurrences) int numberOfOccurrences;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
