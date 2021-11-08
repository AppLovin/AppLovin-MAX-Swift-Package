//
//  ALResourceManager.m
//  AppLovinSDK
//
//  Created by Ritam Sarmah on 11/3/21.
//  Copyright © 2021 AppLovin Corporation. All rights reserved.
//

#import "ALResourceManager.h"

@implementation ALResourceManager

static NSURL *_resourceBundleURL;

+ (void)initialize
{
    [super initialize];
    
    _resourceBundleURL = [SWIFTPM_MODULE_BUNDLE URLForResource: @"AppLovinSDKResources" withExtension: @"bundle"];

    return self;
}

+ (NSURL *)resourceBundleURL
{
    return _resourceBundleURL;
}

@end
