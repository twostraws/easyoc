//
//  SKLabelNode+Easy.m
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "SKLabelNode+Easy.h"

#import "Rewrites.h"

@implementation SKLabelNode(Easy)

- (void)setAlignment:(int)alignment
{
	if (alignment == alignLeft) {
		self.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeLeft;
	} else if (alignment == alignCenter) {
		self.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeCenter;
	} else if (alignment == alignRight) {
		self.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeRight;
	}
}

- (int)alignment
{
	return self.horizontalAlignmentMode;
}

@end
