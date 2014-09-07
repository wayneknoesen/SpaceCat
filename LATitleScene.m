//
//  LATitleScene.m
//  Space Cat
//
//  Created by Wayne Knoesen on 05/09/14.
//  Copyright (c) 2014 LeetApps. All rights reserved.
//

#import "LATitleScene.h"
#import "LAGamePlayScene.h"

@implementation LATitleScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"splash_1"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:background];
        
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    LAGamePlayScene *gamePlayScene = [LAGamePlayScene sceneWithSize:self.frame.size];
    SKTransition *transition = [SKTransition flipHorizontalWithDuration:1.0];
    [self.view presentScene:gamePlayScene transition:transition];
}


@end
