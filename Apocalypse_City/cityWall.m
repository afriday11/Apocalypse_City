//
//  cityWall.m
//  Apocalypse_City
//
//  Created by Andrew Friday on 5/24/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import "cityWall.h"

@implementation cityWall

int IDNumber = 1;

-(id)init{
    // how can a thing be equal to sending super and init?
    // thes this mean, if the parent class has been initialized, do said actions?
    if (self = [super init]){
        self.baseHP = [NSNumber numberWithInt:100];
        self.currentHP = [NSNumber numberWithInt:100];
        self.defenderCount = [NSNumber numberWithInt:0];
        self.zombieCount = [NSNumber numberWithInt:0];
        self.wallID = [NSNumber numberWithInt:(IDNumber)];
        
        self.outsideWall = [[NSMutableArray alloc] initWithCapacity:100];
        self.insideWall = [[NSMutableArray alloc] initWithCapacity:100];
        
        //[self.wallArray addObject:wall];
        IDNumber = IDNumber + 1;
    }
    return self;
}




@end
