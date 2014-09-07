//
//  LAProjectileNode.m
//  Space Cat
//
//  Created by Wayne Knoesen on 06/09/14.
//  Copyright (c) 2014 LeetApps. All rights reserved.
//

#import "LAProjectileNode.h"

@implementation LAProjectileNode

+(instancetype) projectileAtPosition:(CGPoint)position{
    
    LAProjectileNode *projectile = [self spriteNodeWithImageNamed:@"projectile_1"];
    projectile.position = position;
    projectile.name = @"Projectile";
    
    [projectile setUpAnimation];
    
    return projectile;
}

-(void) setUpAnimation {
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"projectile_1"],
                          [SKTexture textureWithImageNamed:@"projectile_2"],
                          [SKTexture textureWithImageNamed:@"projectile_3"]];
    
    SKAction *animation = [SKAction animateWithTextures:textures timePerFrame:0.1];
    
    SKAction *repeat = [SKAction repeatActionForever:animation];
    [self runAction:repeat];
}









@end
