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

//If I go to a more flexable xy system to build buildings I'll probably create a building class with x, y coordinates that cityWall will inherit.
@property (strong, nonatomic) NSNumber * xDirection;
@property (strong, nonatomic) NSNumber * yDirection;



//method that creates the array of wall objects. Right now I am using the createInitialWalls method
-(NSMutableArray *)createWalls;
@property (strong, nonatomic) NSMutableArray *wallArray;

-(void) createInitialWalls;

-(void) attackWall;

//-(void) createWall;

-(void) assignZombies: (NSNumber *)hordeCount fromDirection: (NSNumber *)attackDirection;

@end
