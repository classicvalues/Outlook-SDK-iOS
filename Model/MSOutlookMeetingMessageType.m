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



#import "MSOutlookMeetingMessageType.h"

@implementation MSOutlookMeetingMessageTypeSerializer

+(MSOutlookMeetingMessageType) fromString:(NSString *) string {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         [NSNumber numberWithInt:MSOutlookMeetingMessageTypeNone], @"None", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingRequest], @"MeetingRequest", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingCancelled], @"MeetingCancelled", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingAccepted], @"MeetingAccepted", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingTenativelyAccepted], @"MeetingTenativelyAccepted", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingDeclined], @"MeetingDeclined",
            nil        
        ];
    }
    
    return [stringMappings[string] intValue];

}

+(NSString *) toString: (MSOutlookMeetingMessageType) value {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         @"None", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeNone], @"MeetingRequest", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingRequest], @"MeetingCancelled", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingCancelled], @"MeetingAccepted", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingAccepted], @"MeetingTenativelyAccepted", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingTenativelyAccepted], @"MeetingDeclined", [NSNumber numberWithInt:MSOutlookMeetingMessageTypeMeetingDeclined],
            nil        
        ];
    }
    
    return stringMappings[[NSNumber numberWithInt:value]];
}

@end

