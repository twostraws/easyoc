//
//  SKSpriteNode+Easy.h
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKSpriteNode (Easy)

@property float bounciness;
@property bool fixedInPosition;

- (void)addCirclePhysics;
- (void)addRectanglePhysics;

- (void)setFixedInPosition:(bool)fixed;

- (void)setBounciness:(float)percentage;

- (void)removePhysics;

- (void)runAction:action deleteAfter:(bool)delete;

@end
