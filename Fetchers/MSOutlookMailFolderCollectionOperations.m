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



#import "MSOutlookMailFolder.h"
#import "MSOutlookFetchers.h"


/** Implementation for MSOutlookMailFolderCollectionOperations
 *
 */
@implementation MSOutlookMailFolderCollectionOperations

- (void)copyWithDestinationId:(NSString *)destinationId callback:(void (^)(MSOutlookMailFolder *, MSOrcError*))callback {


      NSString *destinationIdString = [NSString stringWithFormat:@"\"%@\"", destinationId];

    return [self copyRawWithDestinationId:destinationIdString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSOutlookMailFolder * result = (MSOutlookMailFolder *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSOutlookMailFolder  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)copyRawWithDestinationId:(NSString *)destinationId callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  destinationId, @"DestinationId", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"Microsoft.OutlookServices.Copy"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)moveWithDestinationId:(NSString *)destinationId callback:(void (^)(MSOutlookMailFolder *, MSOrcError*))callback {


      NSString *destinationIdString = [NSString stringWithFormat:@"\"%@\"", destinationId];

    return [self moveRawWithDestinationId:destinationIdString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSOutlookMailFolder * result = (MSOutlookMailFolder *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSOutlookMailFolder  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)moveRawWithDestinationId:(NSString *)destinationId callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  destinationId, @"DestinationId", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	 	[request.url appendPathComponent:@"Microsoft.OutlookServices.Move"];
     	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }

@end
