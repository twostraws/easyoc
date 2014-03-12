//
//  make.m
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "make.h"

#import "NSMutableArray+Easy.h"

@implementation make

+ (array)array
{
	return [NSMutableArray array];
}

+ (string)string:(char*)txt
{
	return [[NSString stringWithUTF8String:txt] mutableCopy];
}

+ (image)image:(char*)imageName
{
	return [SKSpriteNode spriteNodeWithImageNamed:[NSString stringWithUTF8String:imageName]];
}

+ (image)boxWithColor:(color)col atSize:(size)size
{
	return [SKSpriteNode spriteNodeWithColor:col size:size];
}

+ (label)labelWithText:(char*)txt fontName:(char*)fontName
{
	NSString *str = [NSString stringWithUTF8String:fontName];
	SKLabelNode *node = [SKLabelNode labelNodeWithFontNamed:str];
	node.text = [NSString stringWithUTF8String:txt];
	return node;
}

+ (point)pointWithX:(float)x y:(float)y
{
	return CGPointMake(x, y);
}

+ (size)sizeWithWidth:(float)width height:(float)height
{
	return CGSizeMake(width, height);
}

+ (point)pointAtCentre:(rect)frame
{
	return CGPointMake(CGRectGetMidX(frame), CGRectGetMidY(frame));
}

+ (rect)rectWithX:(float)x y:(float)y width:(float)width height:(float)height
{
	return CGRectMake(x, y, width, height);
}

+ (float)numberBetween:(float)low and:(float)high
{
	float diff = high - low;
	return (((float) (arc4random() % ((unsigned)RAND_MAX + 1)) / RAND_MAX) * diff) + low;
}

+ (float)floatBetween:(float)low and:(float)high
{
	float diff = high - low;
	return (((float) (arc4random() % ((unsigned)RAND_MAX + 1)) / RAND_MAX) * diff) + low;
}

+ (float)integerBetween:(int)low and:(int)high
{
	return arc4random_uniform((high - low) + 1) + low;
}

+ (color)colorWithRed:(float)red green:(float)green blue:(float)blue opacity:(float)opacity
{
	return [SKColor colorWithRed:red / 100.0 green:green / 100.0 blue:blue / 100.0 alpha:opacity / 100.0];
}

+ (particles)particlesFromFilename:(char*)filename;
{
	NSString *myParticlePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithUTF8String:filename] ofType:@"sks"];
	SKEmitterNode *myParticle = [NSKeyedUnarchiver unarchiveObjectWithFile:myParticlePath];

	return myParticle;
}

+ (action)rotationTo:(float)angle duration:(float)duration repeat:(int)count
{
	SKAction *action = [SKAction rotateByAngle:DEG2RAD(angle) duration:duration];

	switch (count) {
		case 0:
			return action;

		case -1:
			return [SKAction repeatActionForever:action];

		default:
			return [SKAction repeatAction:action count:count];
	}
}

+ (action)scaleTo:(float)amount duration:(float)duration
{
	return [SKAction scaleTo:amount / 100.0 duration:duration];
}

+ (action)fadeTo:(float)opacity duration:(float)duration
{
	return [SKAction fadeAlphaTo:opacity / 100.0 duration:duration];
}

+ (action)scaleTo:(float)amount fadeTo:(float)opacity rotationTo:(float)angle duration:(float)duration
{
	array actions = [make array];

	if (amount != ignore) {
		action scale = [make scaleTo:amount duration:duration];
		[actions add:scale];
	}

	if (opacity != ignore) {
		action fade = [make fadeTo:opacity duration:duration];
		[actions add:fade];
	}

	if (angle != ignore) {
		action rotate = [make rotationTo:angle duration:duration repeat:0];
		[actions add:rotate];
	}

	action group = [make actionGroup:actions];
	return group;
}

+ (action)actionSequence:(array)items
{
	return [SKAction sequence:items];
}

+ (action)actionGroup:(array)items
{
	return [SKAction group:items];
}

@end
