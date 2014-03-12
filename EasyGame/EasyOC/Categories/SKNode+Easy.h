//
//  SKNode+Easy.h
//  EasyGame
//
//  Created by Hudzilla on 06/02/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

#import "Rewrites.h"

@interface SKNode (Easy)

@property float rotation;

- (void)changeNameTo:(char*)name;

@end
