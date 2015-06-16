//
//  Timer.m
//  
//
//  Created by Andrew Friday on 5/4/15.
//
//

#import "Timer.h"

@implementation Timer

- (void) worldTimer{
    //this is the game's main timer. this fires every few seconds and controls minor events such as updating the health of the walls.
    //Also, what can I do about the "Uused variable 'timer'" message? The NSTimer is working how I want it, so I don't really see what is the problem.
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(worldEvent) userInfo:nil repeats:YES];
    
}

- (void) worldEvent {
    cityWall * newWall = [[cityWall alloc]init];
    [newWall attackWall];
}


- (void) eventTimer {
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(createEvent) userInfo:nil repeats:YES];
}

- (void) createEvent {
    
    int number = arc4random_uniform(101);
    
    //are we generating new zombies?
    if (number < 50) {
        
        zombie *newZombie = [[zombie alloc]init];
        [newZombie generateZombies];
        
    }
    
    
}



//RPGFactory *factory = [[RPGFactory alloc]init];
//self.tiles = [factory tiles];
//self.character = [factory character];
//self.boss = [factory boss];









@end
