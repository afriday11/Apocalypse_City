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

@property (strong, nonatomic) NSString * wallName;
@property (strong, nonatomic) NSNumber * wallID;
@property (strong, nonatomic) NSNumber * baseHP;
@property (strong, nonatomic) NSNumber * currentHP;
@property (strong, nonatomic) NSNumber * zombieCount;
@property (strong, nonatomic) NSNumber * defenderCount;
@property (strong, nonatomic) NSNumber * numberOfWalls;

@property (nonatomic) int IDNumber;

@property (strong, nonatomic) NSMutableArray * outsideWall;
@property (strong, nonatomic) NSMutableArray * insideWall;


//-(void) assignZombies: (NSNumber *)hordeCount fromDirection: (NSNumber *)attackDirection;

@end
