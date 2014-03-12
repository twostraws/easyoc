//
//  GameScene.h
//  EasyGame
//

//  Copyright (c) 2014 PaulH. All rights reserved.
//

#import "Scene.h"
#import <SpriteKit/SpriteKit.h>

@interface GameScene : Scene

object label scoreLabel;
value int score;

object label editLabel;
value bool editingMode;

@end
