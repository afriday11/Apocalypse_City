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
@property (nonatomic) int baseHP;
@property (nonatomic) int currentHP;
@property (nonatomic) int zombieCount;
@property (nonatomic) int defenderCount;

//If I go to a more flexable xy system to build buildings I'll probably create a building class with x, y coordinates that cityWall will inherit.
@property (nonatomic) int xDirection;
@property (nonatomic) int yDirection;



//method that creates the array of wall objects. Right now I am using the createInitialWalls method
-(NSMutableArray *)createWalls;
@property (strong, nonatomic) NSMutableArray *wallArray;

-(void) createInitialWalls;

-(void) attackWall;

//-(void) createWall;

-(void) assignZombies: (int *)hordeCount fromDirection: (int *)attackDirection;

@end
