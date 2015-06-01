//
//  cityWall.m
//  Apocalypse_City
//
//  Created by Andrew Friday on 5/24/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import "cityWall.h"

@implementation cityWall

int ID = 1;

-(void) createWall {
    
    cityWall *wall = [[cityWall alloc] init];
    wall.wallHP = 100;
    wall.wallID = ID;
    ID = ID + 1;
    
    //not sure if I need to initialize a number here for the wall
    wall.defenderCount = 0;
    wall.zombieCount = 0;
    
    NSLog(@"wall %i created",wall.wallID);
}

//how do I assign zombies I created in zombie.m to a wall?
-(void) assignZombies:(int *)hordeCount fromDirection:(int *)attackDirection {
    self.wallID = *(attackDirection);
    self.zombieCount = *(hordeCount);
    
    //NSLog(@"%d, %d",self.wallID, self.zombieCount);
};


//stuff I will need to use in the future
-(void) attackWall {
    self.wallHP = self.wallHP - self.zombieCount;
}

//-(void) repairWall {
//    self.wallHP = self.wallHP + self.citizenCount;
//}


@end
