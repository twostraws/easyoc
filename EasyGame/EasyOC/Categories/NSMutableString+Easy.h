//
//  NSMutableString+Easy.h
//  EasyGame
//
//  Created by Hudzilla on 30/01/2014.
//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableString(Easy)

- (BOOL)equals:(char*)otherString;
- (void)append:(char*)otherString;
- (void)appendInt:(int)num;
- (void)appendFloat:(float)num;

@end