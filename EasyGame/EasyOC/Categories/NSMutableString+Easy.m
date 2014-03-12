//
//  NSMutableString+Easy.m
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "NSMutableString+Easy.h"


@implementation NSMutableString(Easy)

- (BOOL)equals:(char*)otherString
{
	NSString *otherNSString = [NSString stringWithUTF8String:otherString];
	return [self isEqualToString:otherNSString];
}

- (void)append:(char*)otherString
{
	NSString *otherNSString = [NSString stringWithUTF8String:otherString];
	[self appendString:otherNSString];
}

- (void)appendInt:(int)num
{
	[self appendFormat:@"%d", num];
}

- (void)appendFloat:(float)num
{
	[self appendFormat:@"%.2f", num];
}

@end