//
//  LASpaceCatNode.m
//  Space Cat
//
//  Created by Wayne Knoesen on 06/09/14.
//  Copyright (c) 2014 LeetApps. All rights reserved.
//

#import "LASpaceCatNode.h"

@interface LASpaceCatNode ()
@property (nonatomic) SKAction *tapAction;
@end


@implementation LASpaceCatNode

+(instancetype) SpaceCatAtPosition:(CGPoint)position{
    LASpaceCatNode *spaceCat = [self spriteNodeWithImageNamed:@"spacecat_1"];
    spaceCat.anchorPoint = CGPointMake(0.5, 0);
    spaceCat.position = position;
    spaceCat.name = @"SpaceCat";
    
    return spaceCat;
}

-(void) performTap {
    [self runAction:self.tapAction];
}


-(SKAction *) tapAction {
    if ( _tapAction != nil ) {
        return _tapAction;
    }
    
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"spacecat_2"],
                          [SKTexture textureWithImageNamed:@"spacecat_1"]];
    
    _tapAction = [SKAction animateWithTextures:textures timePerFrame:0.25];
    
    return _tapAction;

}



@end
