//
//  NSMutableArray+Easy.m
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "NSMutableArray+Easy.h"

@implementation NSMutableArray (Easy)

- (void)add:(id)item
{
	[self addObject:item];
}

- (void)remove:(id)item
{
	[self removeObject:item];
}

@end
