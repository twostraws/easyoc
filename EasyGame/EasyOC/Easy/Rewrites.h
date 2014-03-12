//
//  Rewrites.h
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

static const int forever = -1;
static const int ignore = 0xCAFED00D;

static const SKLabelHorizontalAlignmentMode alignLeft = SKLabelHorizontalAlignmentModeLeft;
static const SKLabelHorizontalAlignmentMode alignCenter = SKLabelHorizontalAlignmentModeCenter;
static const SKLabelHorizontalAlignmentMode alignRight = SKLabelHorizontalAlignmentModeRight;

typedef NSMutableString* string;
typedef NSMutableArray* array;
typedef SKSpriteNode* image;
typedef SKLabelNode* label;
typedef SKAction* action;
typedef SKEmitterNode *particles;
typedef UIColor* color;
typedef CGPoint point;
typedef CGRect rect;
typedef CGSize size;

#define object @property (strong, nonatomic)
#define value @property (assign, nonatomic)

void DebugMessage(char* message);