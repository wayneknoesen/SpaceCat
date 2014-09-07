//
//  LAGamePlayScene.m
//  Space Cat
//
//  Created by Wayne Knoesen on 05/09/14.
//  Copyright (c) 2014 LeetApps. All rights reserved.
//

#import "LAGamePlayScene.h"
#import "LAMachineNode.h"
#import "LASpaceCatNode.h"
#import "LAProjectileNode.h"

@implementation LAGamePlayScene


-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"background_1"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:background];
        
        LAMachineNode *machine = [LAMachineNode machineAtPosition:CGPointMake(CGRectGetMidX(self.frame), 12)];
        [self addChild:machine];
        
        LASpaceCatNode *spaceCat = [LASpaceCatNode SpaceCatAtPosition:CGPointMake(machine.position.x, machine.position.y)];
        [self addChild:spaceCat];
        
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    for (UITouch *touch in touches) {
        CGPoint position = [touch locationInNode:self];
        [self shootProjectileTowardsPosition:position];
    }
    
}

-(void) shootProjectileTowardsPosition:(CGPoint)position {
    LASpaceCatNode *spaceCat = (LASpaceCatNode*)[self childNodeWithName:@"SpaceCat"];
    [spaceCat performTap];
    
    LAProjectileNode *projectile = [LAProjectileNode projectileAtPosition:position];
    [self addChild:projectile];
    
    
}


@end
