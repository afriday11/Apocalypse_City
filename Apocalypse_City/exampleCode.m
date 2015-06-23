//
//  exampleCode.m
//  Apocalypse_City
//
//  Created by Andrew Friday on 6/20/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import "exampleCode.h"

@implementation exampleCode

////Create another car
//Car *prius = [[Car alloc] init];
//prius.brandName = @"Toyota";
//prius.modelName = @"Prius";
//prius.modelYear = 2002;
//prius.hasSunroof = YES;
//prius.isConvertible = NO;
//prius.isHatchback = YES;
//prius.numberOfDoors = 4;
//prius.powerSource = @"hybrid engine";
//
////Add it to the array.
//[self.vehicles addObject:prius];
//
////Sort the array by the model year
//NSSortDescriptor *modelYear = [NSSortDescriptor sortDescriptorWithKey:@"modelYear" ascending:YES];
//[self.vehicles sortUsingDescriptors:@[modelYear]];

//// Initialize the vehicle array
//self.vehicles = [NSMutableArray array];
//
//// Call the setup method
//[self setupVehicleArray];
//
//// Set the title of the View Controller, which will display in the Navigation bar.
//self.title = @"Vehicles";



//-(void) createInitialWalls{
//    int ID = 1;
//    
//    for (int i = 0; i < 4; i++) {
//        cityWall *wall = [[cityWall alloc] init];
//        wall.baseHP = [NSNumber numberWithInt:100];
//        wall.currentHP = wall.baseHP;
//        wall.wallID = [NSNumber numberWithInt:ID];
//        ID = ID + 1;
//        
//        //not sure if I need to initialize a number here for the wall
//        wall.defenderCount = 0;
//        wall.zombieCount = 0;
//        
//        NSLog(@"wall %@ created",wall.wallID);
//        
//        [self.wallArray addObject:wall];
//    };
//    
//}
//
//-(NSMutableArray *) createWalls {
//    int ID = 1;
//    
//    NSMutableArray * wallsArray = [[NSMutableArray alloc]init];
//    
//    for (int i=0; i<5; i++) {
//        cityWall *wall = [[cityWall alloc] init];
//        wall.baseHP = [NSNumber numberWithInt:100];
//        wall.currentHP = wall.baseHP;
//        wall.wallID = [NSNumber numberWithInt: ID];
//        ID = ID + 1;
//        
//        //not sure if I need to initialize a number here for the wall
//        wall.defenderCount = 0;
//        wall.zombieCount = 0;
//        
//        NSLog(@"wall %@ created",wall.wallID);
//    };
//    
//    return wallsArray;
//}
//
////how do I assign zombies I created in zombie.m to a wall?
//-(void) assignZombies:(NSNumber *)hordeCount fromDirection:(NSNumber *)attackDirection {
//    self.wallID = (NSNumber *)attackDirection;
//    self.zombieCount = (NSNumber *)hordeCount;//?????? What does adding an (int) in front of this mean?
//    //NSLog(@"%i, %i", self.zombieCount, self.wallID);
//};
//
//
////this is the thing that is holding me back now
////how do I access the walls and lower their health? I've tried a bunch of stuff, but this is the only way that doesn't crash the program. The only problem is that it is creating a new wall, instead of accessing the already created walls.
//
//-(void) attackWall {
//    
//    //this should iterate by the total number of walls. I'll update later.
//    for (int i = 1; i <= 5; i ++) {
//        
//        
//        
//        //        cityWall *wall = [[cityWall alloc]init];
//        //        wall.wallID = @(i);
//        //
//        //        wall.currentHP = [NSNumber numberWithFloat:([wall.currentHP integerValue] - [wall.zombieCount integerValue])];
//        //        //wall.currentHP = wall.currentHP - wall.zombieCount;
//        //        NSLog(@"Wall %@ HP = %@",self.wallID, self.currentHP);
//        
//    }
//    
//    
//}
//
////-(void) repairWall {
////    self.wallHP = self.wallHP + self.citizenCount;
////}

@end
