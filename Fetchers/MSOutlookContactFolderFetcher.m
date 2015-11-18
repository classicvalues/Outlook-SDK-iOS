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


#import "MSOutlookFetchers.h"
#import "core/core.h"

@implementation MSOutlookContactFolderFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSOutlookContactFolder class]]) {

		_operations = [[MSOutlookContactFolderOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSOutlookContactFolder *ContactFolder, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSOutlookContactFolderFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSOutlookContactFolderFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSOutlookContactFolderFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSOutlookContactFolderFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSOutlookContactFolder *ContactFolder, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSOutlookContactCollectionFetcher *)contacts {

    return [[MSOutlookContactCollectionFetcher alloc] initWithUrl:@"Contacts" parent:self asClass:[MSOutlookContact class]];
}

- (MSOutlookContactFetcher *)contactsById:(NSString *)identifier {

    return [[[MSOutlookContactCollectionFetcher alloc] initWithUrl:@"Contacts" parent:self asClass:[MSOutlookContact class]] getById:identifier];

}

- (MSOutlookContactFolderCollectionFetcher *)childFolders {

    return [[MSOutlookContactFolderCollectionFetcher alloc] initWithUrl:@"ChildFolders" parent:self asClass:[MSOutlookContactFolder class]];
}

- (MSOutlookContactFolderFetcher *)childFoldersById:(NSString *)identifier {

    return [[[MSOutlookContactFolderCollectionFetcher alloc] initWithUrl:@"ChildFolders" parent:self asClass:[MSOutlookContactFolder class]] getById:identifier];

}

@end
