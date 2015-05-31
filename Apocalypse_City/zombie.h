//
//  zombie.h
//  Apocalypse_City
//
//  Created by Andrew Friday on 5/16/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cityWall.h"

@interface zombie : NSObject

@property (nonatomic) int hordeNumber;
@property (nonatomic) int attackDirection;


-(void) generateZombies;

@end
