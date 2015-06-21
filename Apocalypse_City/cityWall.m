//
//  cityWall.m
//  Apocalypse_City
//
//  Created by Andrew Friday on 5/24/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import "cityWall.h"

@implementation cityWall

-(void) createInitialWalls{
    int ID = 1;
    
    for (int i = 0; i < 4; i++) {
        cityWall *wall = [[cityWall alloc] init];
        wall.baseHP = [NSNumber numberWithInt:100];
        wall.currentHP = wall.baseHP;
        wall.wallID = [NSNumber numberWithInt:ID];
        ID = ID + 1;
        
        //not sure if I need to initialize a number here for the wall
        wall.defenderCount = 0;
        wall.zombieCount = 0;
        
        NSLog(@"wall %@ created",wall.wallID);
        
        [self.wallArray addObject:wall];
    };
    
}

//I started to try to create walls and then add them to an array. I'm not sure if this is the most flexable way to set up the walls. Later on if I want to create a more flexable wall system, it might be better to set up a matrix so the user can create different wall configurations based off of the size of their city. For now though, I just want to get the system up and running.

-(NSMutableArray *) createWalls {
    int ID = 1;
    
    NSMutableArray * wallsArray = [[NSMutableArray alloc]init];
    
    for (int i=0; i<5; i++) {
        cityWall *wall = [[cityWall alloc] init];
        wall.baseHP = [NSNumber numberWithInt:100];
        wall.currentHP = wall.baseHP;
        wall.wallID = [NSNumber numberWithInt: ID];
        ID = ID + 1;
        
        //not sure if I need to initialize a number here for the wall
        wall.defenderCount = 0;
        wall.zombieCount = 0;
        
        NSLog(@"wall %@ created",wall.wallID);
    };
    
    return wallsArray;
}

//how do I assign zombies I created in zombie.m to a wall?
-(void) assignZombies:(NSNumber *)hordeCount fromDirection:(NSNumber *)attackDirection {
    self.wallID = (NSNumber *)attackDirection;
    self.zombieCount = (NSNumber *)hordeCount;//?????? What does adding an (int) in front of this mean?
    //NSLog(@"%i, %i", self.zombieCount, self.wallID);
};


//this is the thing that is holding me back now
//how do I access the walls and lower their health? I've tried a bunch of stuff, but this is the only way that doesn't crash the program. The only problem is that it is creating a new wall, instead of accessing the already created walls.

-(void) attackWall {
    
    //this should iterate by the total number of walls. I'll update later.
    for (int i = 1; i <= 5; i ++) {
        
        
        
//        cityWall *wall = [[cityWall alloc]init];
//        wall.wallID = @(i);
//
//        wall.currentHP = [NSNumber numberWithFloat:([wall.currentHP integerValue] - [wall.zombieCount integerValue])];
//        //wall.currentHP = wall.currentHP - wall.zombieCount;
//        NSLog(@"Wall %@ HP = %@",self.wallID, self.currentHP);
        
    }
    
    
}

//-(void) repairWall {
//    self.wallHP = self.wallHP + self.citizenCount;
//}


@end
