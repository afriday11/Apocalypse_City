//
//  zombie.h
//  Apocalypse_City
//
//  Created by Andrew Friday on 5/16/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cityWall.h"
#import "cityWallController.h"

@interface zombie : NSObject

@property (strong, nonatomic) NSNumber * hordeNumber;
@property (strong, nonatomic) NSNumber * attackDirection;

@end
