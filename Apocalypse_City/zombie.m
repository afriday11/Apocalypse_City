//
//  zombie.m
//  Apocalypse_City
//
//  Created by Andrew Friday on 5/16/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import "zombie.h"

@implementation zombie

-(id) init{
    if (self = [super init]){
        
        self.level = [NSNumber numberWithInt:arc4random_uniform(7)];
        self.attackDirection = [NSNumber numberWithInt:arc4random_uniform(5)];
        
        NSNumber *num = self.level;
        NSNumber *HP = @(5 + num.intValue * 3);
        NSNumber *attack = @(2 + num.intValue * 1.5);
        
        self.currentHP = [NSNumber numberWithLong:[HP longValue]];
        self.attackPower = [NSNumber numberWithLong:[attack longValue]];
        
        //constant values that help generate attack and HP values for citizens. later, i might want to create a constants sheet so we can more quickly balance all of these values in a central location.
//        NSNumber *num = self.level;
//        NSNumber *attack = @(2 + num.intValue * 1.5);
//        NSNumber *HP = @(10 + num.intValue * 2);
//        NSNumber *repair = @(1 + num.intValue * 1.2);
//        
//        self.attackPower = [NSNumber numberWithLong:[attack longValue]];
//        self.baseHP = [NSNumber numberWithLong:[HP longValue]];
//        self.currentHP = [NSNumber numberWithLong:[self.baseHP longValue]];
//        self.repairPower = [NSNumber numberWithLong:[repair longValue]];
    }
    return self;
}

//-(void) assignZombies: (NSNumber *)hordeCount fromDirection:(NSNumber *)attackDirection {
//    //what to do here...
//    hordeCount
//}


//-(void) generateZombies {
//    zombie *newHorde = [[zombie alloc]init];
//    
//    //create a random number of zombies
//    NSNumber * zombieCount = [NSNumber numberWithFloat:arc4random_uniform(25)];
//    
//    //which wall are they going to attack?
//    //for now I am assigning them a number which corralates to a wall
//    NSNumber * attackWall = [NSNumber numberWithFloat:arc4random_uniform(4)];
//    
//    //print out all info on the zombies
//    //NSLog(@"%@ zombies are attacking wall number %@",zombieCount, attackWall);
//    
//    newHorde.hordeNumber = zombieCount;
//    newHorde.attackDirection = attackWall;
//
//    //Do I always need to create an instance of the class that I want to send a message to? It seems counterintutaive that I need to create an instance of cityWall then send that wall object a message containing the information I need to pass on.
//    cityWall * newWall = [[cityWall alloc]init];
//    [newWall assignZombies:newHorde.hordeNumber fromDirection:newHorde.attackDirection];
//}
@end