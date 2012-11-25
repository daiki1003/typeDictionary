//
//  NSDictionary+type.h
//  
//
//  Created by asahi_daiki on 12/08/28.
//  Copyright (c) 2012 asahi_daiki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (type)

- (NSString *)stringForKey:(NSString *)defaultName;
- (NSMutableString *)mutableStringForKey:(NSString *)defaultName;
- (NSArray *)arrayForKey:(NSString *)defaultName;
- (NSMutableArray *)mutableArrayForKey:(NSString *)defaultName;
- (NSDictionary *)dictionaryForKey:(NSString *)defaultName;
- (NSMutableDictionary *)mutableDictionaryForKey:(NSString *)defaultName;
- (NSData *)dataForKey:(NSString *)defaultName;
- (NSInteger)integerForKey:(NSString *)defaultName;
- (float)floatForKey:(NSString *)defaultName;
- (double)doubleForKey:(NSString *)defaultName;
- (BOOL)boolForKey:(NSString *)defaultName;
- (NSURL *)URLForKey:(NSString *)defaultName NS_AVAILABLE(10_6, 4_0);
- (BOOL)hasKey:(NSString *)element;

@end
