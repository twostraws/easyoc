//
//  SKNode+Easy.m
//  EasyGame
//
//  Created by Hudzilla on 06/02/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "SKNode+Easy.h"

#import "make.h"
#import "Rewrites.h"

@implementation SKNode (Easy)

- (void)changeNameTo:(char*)name
{
	self.name = [NSString stringWithUTF8String:name];
}

- (float)rotation
{
	return RAD2DEG(self.zRotation);
}

- (void)setRotation:(float)angle
{
	self.zRotation = DEG2RAD(angle);
}

@end
