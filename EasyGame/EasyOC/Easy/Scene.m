//
//  Scene.m
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "Scene.h"

#import "make.h"

@interface Scene ()

object image background;

@end

@implementation Scene

-(instancetype)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
		[self setup];
	}

    return self;
}

- (void)setup
{
	// this will be overridden in the subclass
}

- (void)add:(SKNode*)node
{
	[self addChild:node];
}

-(void)update:(CFTimeInterval)currentTime {
	[self update];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	CGPoint location = [touch locationInNode:self];
	[self screenTouched:location];
}

- (void)screenTouched:(point)location
{
	// this will be overridden in the subclass
}

- (void)update
{
	// this will be overridden in the subclass
}

- (void)createPhysicsFromEdges
{
	self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:CGRectMake(0, 0, 1024, 768)];
	self.physicsWorld.contactDelegate = self;
}

// we can't just expect them to use nodesAtPoint, because a) what's a "node", and b) all EasyOC arrays are mutable
- (array)objectsAtPoint:(point)location
{
	return [[self nodesAtPoint:location] mutableCopy];
}

- (void)setBackgroundImage:(char*)image
{
	if (self.background != nil) {
		[self.background removeFromParent];
		self.background = nil;
	}

	self.background = [make image:image];
	self.background.blendMode = SKBlendModeReplace; // no alpha needed for the background image
	self.background.position = [make pointAtCentre:self.frame];
	self.background.zPosition = -1; // always ensure it's at the back of our scene
	[self add:self.background];
}

- (void)didBeginContact:(SKPhysicsContact *)contact
{
	if ([contact.bodyA.node isKindOfClass:[SKSpriteNode class]] && [contact.bodyA.node isKindOfClass:[SKSpriteNode class]]) {
		[self collisionBetween:(image)contact.bodyA.node and:(image)contact.bodyB.node];
	}
}

- (void)collisionBetween:(image)thing1 and:(image)thing2
{
	// this will be overridden in the subclass
}

@end

