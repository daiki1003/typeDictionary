//
//  NSDictionary+type.m
//  My365
//
//  Created by A12628 on 12/08/28.
//  Copyright (c) 2012 SIROK, Inc. All rights reserved.
//

#import "NSDictionary+type.h"

@implementation NSDictionary (type)

- (NSString *)stringForKey:(NSString *)defaultName {
    id obj = [self objectForKey:defaultName];
    
    // なければnilを返す
    if(obj == nil)
        return nil;
    
    // 既にNSStringならそのまま返す
    if([obj isKindOfClass:[NSString class]])
        return obj;
    
    return [NSString stringWithFormat:@"%@",obj];
}

- (NSMutableString *)mutableStringForKey:(NSMutableString *)defaultName {
    NSString *str = [self stringForKey:defaultName];
    NSMutableString *mStr = (NSMutableString *)str;
    return mStr;
}

- (NSArray *)arrayForKey:(NSString *)defaultName {
    NSArray *retArray = [self objectForKey:defaultName];
    return retArray;
}

- (NSMutableArray *)mutableArrayForKey:(NSString *)defaultName {
    NSMutableArray *dict = (NSMutableArray *)[self arrayForKey:defaultName];
    return dict;
}

- (NSDictionary *)dictionaryForKey:(NSString *)defaultName {
    NSDictionary *dict = [self objectForKey:defaultName];
    return dict;
}

- (NSMutableDictionary *)mutableDictionaryForKey:(NSString *)defaultName {
    NSMutableDictionary *dict = (NSMutableDictionary *)[self dictionaryForKey:defaultName];
    return dict;
}

- (NSData *)dataForKey:(NSString *)defaultName {
    NSData *data = [self objectForKey:defaultName];
    return data;
}

- (NSInteger)integerForKey:(NSString *)defaultName {
    return [[self objectForKey:defaultName] integerValue];
}

- (float)floatForKey:(NSString *)defaultName {
    return [[self objectForKey:defaultName] floatValue];
}

- (double)doubleForKey:(NSString *)defaultName {
    return [[self objectForKey:defaultName] doubleValue];
}

- (BOOL)boolForKey:(NSString *)defaultName {
    return [[self objectForKey:defaultName] boolValue];
}

- (NSURL *)URLForKey:(NSString *)defaultName {
    NSURL *url = [self objectForKey:defaultName];
    return url;
}

- (BOOL)hasKey:(NSString *)element {
    return [[self allKeys] indexOfObject:element] != NSNotFound;
}

@end
