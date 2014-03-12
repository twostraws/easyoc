//
//  Scene.h
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

#import "Colors.h"
#import "NSMutableArray+Easy.h"
#import "NSMutableString+Easy.h"
#import "NSString+Easy.h"
#import "SKLabelNode+Easy.h"
#import "SKNode+Easy.h"
#import "SKSpriteNode+Easy.h"

#import "make.h"

@interface Scene : SKScene <SKPhysicsContactDelegate>

- (void)setup;

- (void)add:(SKNode*)node;
- (void)createPhysicsFromEdges;
- (array)objectsAtPoint:(point)location;
- (void)setBackgroundImage:(char*)image;

- (void)screenTouched:(point)location;
- (void)collisionBetween:(image)thing1 and:(image)thing2;

@end