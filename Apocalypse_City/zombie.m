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
    NSLog(@"%i zombies are attacking wall number %i",zombieCount, attackWall);
    
    newHorde.hordeNumber = zombieCount;
    newHorde.attackDirection = attackWall;

    //Do I always need to create an instance of the class that I want to send a message to? It seems counterintutaive that I need to create an instance of cityWall then send that wall object a message containing the information I need to pass on.
    cityWall * newWall = [[cityWall alloc]init];
    [newWall assignZombies:newHorde.hordeNumber fromDirection:newHorde.attackDirection];
}
@end