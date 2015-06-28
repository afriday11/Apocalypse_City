//
//  citizen.m
//  Apocalypse_City
//
//  Created by Andrew Friday on 6/27/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import "citizen.h"

@implementation citizen

-(id) init {
    if (self = [super init]) {
        
        self.level = [NSNumber numberWithInt:arc4random_uniform(7)];
        
        //constant values that help generate attack and HP values for citizens. later, i might want to create a constants sheet so we can more quickly balance all of these values in a central location.
        NSNumber *num = self.level;
        NSNumber *attack = @(2 + num.intValue * 1.5);
        NSNumber *HP = @(10 + num.intValue * 2);
        NSNumber *repair = @(1 + num.intValue * 1.2);

        self.attackPower = [NSNumber numberWithLong:[attack longValue]];
        self.baseHP = [NSNumber numberWithLong:[HP longValue]];
        self.currentHP = [NSNumber numberWithLong:[self.baseHP longValue]];
        self.repairPower = [NSNumber numberWithLong:[repair longValue]];
        
    }
    
    return self;
}


//@property (strong, nonatomic) NSNumber * repairPower;


@end
