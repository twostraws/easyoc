//
//  SKSpriteNode+Easy.m
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "SKSpriteNode+Easy.h"

@implementation SKSpriteNode(Easy)


// Physics! This line may make more experienced coders cringe:
// self.physicsBody.contactTestBitMask = self.physicsBody.collisionBitMask;
// However, it does make the physics code much easier, because it automatically
// sets all bits for contact testing, thus reporting all collisions.
// Clearly this is inefficient for larger scenes, but it's good enough
// for every kind of small scene and makes logical sense to newcomers.

- (void)addCirclePhysics
{
	self.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:self.size.width / 2.0];
	self.physicsBody.contactTestBitMask = self.physicsBody.collisionBitMask;
}

- (void)addRectanglePhysics
{
	self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.size];
	self.physicsBody.contactTestBitMask = self.physicsBody.collisionBitMask;	
}

- (void)removePhysics
{
	self.physicsBody = nil;
}

- (void)setFixedInPosition:(bool)fixed
{
	if (self.physicsBody == nil) {
		UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You're trying to make something fixed in position when you haven't given it rectangle or cirlce physics yet." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[av show];
		return;
	}

	self.physicsBody.dynamic = !fixed;
}

- (bool)fixedInPosition
{
	return !self.physicsBody.dynamic;
}

- (float)bounciness
{
	return self.physicsBody.restitution * 100;
}

- (void)setBounciness:(float)percentage
{
	if (self.physicsBody == nil) {
		UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You're trying to set the bounciness of an object when you haven't given it rectangle or cirlce physics yet." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[av show];
		return;
	}

	self.physicsBody.restitution = percentage / 100;
}

- (void)runAction:action deleteAfter:(bool)delete
{
	__weak id weakSelf = self;

	[self runAction:action completion:^{
		[weakSelf removeFromParent];
	}];
}

@end
