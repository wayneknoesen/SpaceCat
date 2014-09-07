//
//  LASpaceCatNode.h
//  Space Cat
//
//  Created by Wayne Knoesen on 06/09/14.
//  Copyright (c) 2014 LeetApps. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface LASpaceCatNode : SKSpriteNode

+(instancetype) SpaceCatAtPosition:(CGPoint)position;

-(void) performTap;

@end
