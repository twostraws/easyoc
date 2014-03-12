//
//  NSString+Easy.m
//  EasyGame
//
//  Created by Hudzilla on 06/02/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "NSString+Easy.h"

@implementation NSString (Easy)

- (BOOL)equals:(char*)otherString
{
	NSString *otherNSString = [NSString stringWithUTF8String:otherString];
	return [self isEqualToString:otherNSString];
}

@end
