//
//  cityWallController.h
//  Apocalypse_City
//
//  Created by Andrew Friday on 6/21/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cityWall.h"
#import "citizen.h"

@interface cityWallController : NSObject

@property (strong, nonatomic) NSMutableArray *wallArray;

//initializers
-(void) createInitialWalls;
-(void) generateZombies;
-(void) generateCitizens;

-(void) worldTimer;

-(void) attackWalls;

@end
