//
//  zombie.m
//  Apocalypse_City
//
//  Created by Andrew Friday on 5/16/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import "zombie.h"

@implementation zombie

-(void) generateZombies {
    zombie *newHorde = [[zombie alloc]init];
    
    //create a random number of zombies
    int zombieCount = arc4random_uniform(25);
    
    //which wall are they going to attack?
    //for now I am assigning them a number which corralates to a wall
    int attackWall = arc4random_uniform(5) + 1;
    
    //print out all info on the zombies
    NSLog(@"%i zombies are attaching wall number %i",zombieCount, attackWall);
    
    newHorde.hordeNumber = zombieCount;
    newHorde.attackDirection = attackWall;
    
    
    // Usefull information //
    //    @property (strong, nonatomic) NSString *wallName;
    //    @property (nonatomic) int wallID;
    //    @property (nonatomic) int wallHP;
    //    @property (nonatomic) int zombieCount;
    //    @property (nonatomic) int defenderCount;
    
    //assign zombies to a wall
    //-(void) assignZombies: (int *)hordeCount fromDirection: (int *)attackDirection;
    
    //cityWall * wall = [[cityWall alloc]init];
    
    //[assignZombies: (newHorde.hordeNumber) fromDirection: (newHorde.attackDirection)];
    }
@end