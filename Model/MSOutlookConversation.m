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



#import "MSOutlookModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSOutlookConversation
 *
 */
@implementation MSOutlookConversation


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Topic", @"topic", @"HasAttachments", @"hasAttachments", @"LastDeliveredDateTime", @"lastDeliveredDateTime", @"UniqueSenders", @"uniqueSenders", @"Preview", @"preview", @"Threads", @"threads", @"Id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.Conversation";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_topic = (![dic objectForKey: @"Topic"] || [ [dic objectForKey: @"Topic"] isKindOfClass:[NSNull class]] )?_topic:[[dic objectForKey: @"Topic"] copy];
		_hasAttachments = (![dic objectForKey: @"HasAttachments"] || [ [dic objectForKey: @"HasAttachments"] isKindOfClass:[NSNull class]] )?_hasAttachments:[[dic objectForKey: @"HasAttachments"] boolValue];
		_lastDeliveredDateTime = (![dic objectForKey: @"LastDeliveredDateTime"] || [ [dic objectForKey: @"LastDeliveredDateTime"] isKindOfClass:[NSNull class]] )?_lastDeliveredDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"LastDeliveredDateTime"]];

        if([dic objectForKey: @"UniqueSenders"] != [NSNull null]){
            _uniqueSenders = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"UniqueSenders"]) {
                [_uniqueSenders addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)_uniqueSenders resetChangedFlag];
        }
        
		_preview = (![dic objectForKey: @"Preview"] || [ [dic objectForKey: @"Preview"] isKindOfClass:[NSNull class]] )?_preview:[[dic objectForKey: @"Preview"] copy];

        if([dic objectForKey: @"Threads"] != [NSNull null]){
            _threads = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Threads"]) {
                [_threads addObject:[[MSOutlookConversationThread alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_threads resetChangedFlag];
        }
        
		self._id = (![dic objectForKey: @"Id"] || [ [dic objectForKey: @"Id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"Id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.topic copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Topic"];}
	{[dic setValue: (self.hasAttachments?@"true":@"false") forKey: @"HasAttachments"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastDeliveredDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"LastDeliveredDateTime"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.uniqueSenders) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"UniqueSenders"];}
	{id curVal = [self.preview copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Preview"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.threads) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"Threads"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.OutlookServices.Conversation" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.topic;
    if([self.updatedValues containsObject:@"Topic"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Topic"];
            }
    }
 if([self.updatedValues containsObject:@"HasAttachments"])
            { [dic setValue: (self.hasAttachments?@"true":@"false") forKey: @"HasAttachments"];
}	{id curVal = self.lastDeliveredDateTime;
    if([self.updatedValues containsObject:@"LastDeliveredDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"LastDeliveredDateTime"];
            }
    }
	{id curVal = self.uniqueSenders;
    if([self.updatedValues containsObject:@"UniqueSenders"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"UniqueSenders"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.uniqueSenders) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"UniqueSenders"];
        }
        
            }}
	{id curVal = self.preview;
    if([self.updatedValues containsObject:@"Preview"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Preview"];
            }
    }
	{id curVal = self.threads;
    if([self.updatedValues containsObject:@"Threads"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"Threads"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.threads) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"Threads"];
        }
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"Id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Id"];
            }
    }
    return dic;
}


/** Setter implementation for property topic
 *
 */
- (void) setTopic: (NSString *) value {
    _topic = value;
    [self valueChangedFor:@"Topic"];
}
       
/** Setter implementation for property hasAttachments
 *
 */
- (void) setHasAttachments: (bool) value {
    _hasAttachments = value;
    [self valueChangedFor:@"HasAttachments"];
}
       
/** Setter implementation for property lastDeliveredDateTime
 *
 */
- (void) setLastDeliveredDateTime: (NSDate *) value {
    _lastDeliveredDateTime = value;
    [self valueChangedFor:@"LastDeliveredDateTime"];
}
       
/** Setter implementation for property uniqueSenders
 *
 */
- (void) setUniqueSenders: (NSMutableArray *) value {
    _uniqueSenders = value;
    [self valueChangedFor:@"UniqueSenders"];
}
       
/** Setter implementation for property preview
 *
 */
- (void) setPreview: (NSString *) value {
    _preview = value;
    [self valueChangedFor:@"Preview"];
}
       
/** Setter implementation for property threads
 *
 */
- (void) setThreads: (NSMutableArray *) value {
    _threads = value;
    [self valueChangedFor:@"Threads"];
}
       

@end
