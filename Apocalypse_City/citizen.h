//
//  citizen.h
//  Apocalypse_City
//
//  Created by Andrew Friday on 6/27/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface citizen : NSObject

@property (strong, nonatomic) NSNumber * level;

@property (strong, nonatomic) NSNumber * currentHP;
@property (strong, nonatomic) NSNumber * baseHP;

@property (strong, nonatomic) NSNumber * attackPower;
@property (strong, nonatomic) NSNumber * repairPower;

@end
