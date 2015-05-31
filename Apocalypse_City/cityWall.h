//
//  cityWall.h
//  Apocalypse_City
//
//  Created by Andrew Friday on 5/24/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "zombie.h"

@interface cityWall : NSObject

@property (strong, nonatomic) NSString *wallName;
@property (nonatomic) int wallID;
@property (nonatomic) int wallHP;
@property (nonatomic) int zombieCount;
@property (nonatomic) int defenderCount;

-(void) attackWall;

-(void) createWall;

-(void) assignZombies: (int *)hordeCount fromDirection: (int *)attackDirection;

@end
