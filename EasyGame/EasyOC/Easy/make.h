//
//  make.h
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

#import "Rewrites.h"

#define 	DEG2RAD(x)   ((x) * M_PI / 180.0f)
#define 	RAD2DEG(x)   ((x) * 180.0f / M_PI)

@interface make : NSObject

+ (array)array;
+ (string)string:(char*)txt;
+ (image)image:(char*)imageName;
+ (image)boxWithColor:(color)col atSize:(size)size;
+ (label)labelWithText:(char*)txt fontName:(char*)fontName;
+ (particles)particlesFromFilename:(char*)filename;
+ (point)pointWithX:(float)x y:(float)y;
+ (size)sizeWithWidth:(float)width height:(float)height;
+ (point)pointAtCentre:(CGRect)frame;
+ (rect)rectWithX:(float)x y:(float)y width:(float)width height:(float)height;
+ (float)numberBetween:(float)low and:(float)high; // a generic "just give me a number" that uses floats to avoid confusion in the early stages
+ (float)floatBetween:(float)low and:(float)high;
+ (float)integerBetween:(int)low and:(int)high;
+ (color)colorWithRed:(float)red green:(float)green blue:(float)blue opacity:(float)opacity; // specified as percentages
+ (action)rotationTo:(float)angle duration:(float)duration repeat:(int)count;
+ (action)scaleTo:(float)amount duration:(float)duration;
+ (action)fadeTo:(float)amount duration:(float)duration;
+ (action)scaleTo:(float)amount fadeTo:(float)opacity rotationTo:(float)angle duration:(float)duration;
+ (action)actionSequence:(array)items;
+ (action)actionGroup:(array)items;

@end
