//
//  colors.m
//  EasyGame
//
//  Created by Hudzilla on 06/02/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "colors.h"

#import "make.h"

@implementation colors

+ (color)black
{
	return [UIColor blackColor];
}

+ (color)white
{
	return [UIColor whiteColor];
}

+ (color)red
{
	return [UIColor redColor];
}

+ (color)green
{
	return [UIColor greenColor];
}

+ (color)blue
{
	return [UIColor blueColor];
}

+ (color)yellow
{
	return [UIColor yellowColor];
}

+ (color)brown
{
	return [UIColor brownColor];
}

+ (color)cyan
{
	return [UIColor cyanColor];
}

+ (color)magenta
{
	return [UIColor magentaColor];
}

+ (color)orange
{
	return [UIColor orangeColor];
}

+ (color)purple
{
	return [UIColor purpleColor];
}

+ (color)random
{
	return [UIColor colorWithRed:[make numberBetween:0 and:1] green:[make numberBetween:0 and:1] blue:[make numberBetween:0 and:1] alpha:1];
}

@end
