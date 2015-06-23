//
//  Timer.h
//  
//
//  Created by Andrew Friday on 5/4/15.
//
//

#import <Foundation/Foundation.h>
#import "zombie.h"
#import "cityWall.h"
#import "cityWallController.h"

@interface Timer : NSObject

- (void) worldTimer;
- (void) worldEvent;

- (void) eventTimer;
- (void) createEvent;

@end
