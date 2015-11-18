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



#ifndef MSOUTLOOKPOSTFETCHER_H
#define MSOUTLOOKPOSTFETCHER_H

#import "MSOutlookModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOutlookItemBodyFetcher;
@class MSOutlookRecipientFetcher;
@class MSOutlookRecipientCollectionFetcher;
@class MSOutlookAttachmentCollectionFetcher;
@class MSOutlookAttachmentCollectionFetcher;
@class MSOutlookAttachmentFetcher;
@class MSOutlookPostOperations;


/** MSOutlookPostFetcher
 *
 */
@interface MSOutlookPostFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOutlookPostOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOutlookPost *, MSOrcError *))callback;
- (void)update:(MSOutlookPost *)Post callback:(void (^)(MSOutlookPost *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOutlookPostFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookPostFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookPostFetcher *)select:(NSString *)params;
- (MSOutlookPostFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=inReplyTo) MSOutlookPostFetcher *inReplyTo;
@property (strong, nonatomic, readonly, getter=attachments) MSOutlookAttachmentCollectionFetcher *attachments;

- (MSOutlookAttachmentFetcher *)attachmentsById:(id)identifier;


@end

#endif
