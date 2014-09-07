//
//  LAMachineNode.m
//  Space Cat
//
//  Created by Wayne Knoesen on 06/09/14.
//  Copyright (c) 2014 LeetApps. All rights reserved.
//

#import "LAMachineNode.h"

@implementation LAMachineNode

+(instancetype) machineAtPosition:(CGPoint)position {
    LAMachineNode *machine = [self spriteNodeWithImageNamed:@"machine_1"];
    machine.position = position;
    machine.anchorPoint = CGPointMake(0.5, 0);
    
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"machine_1"],
                          [SKTexture textureWithImageNamed:@"machine_2"]];
    
    SKAction *machineAnimation = [SKAction animateWithTextures:textures timePerFrame:0.1];
    [machine runAction:machineAnimation];
    
    SKAction *machineRepeat = [SKAction repeatActionForever:machineAnimation];
    [machine runAction:machineRepeat];
    
    
    return machine;
    
}


@end
