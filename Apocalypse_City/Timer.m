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
    //this is the game's main timer. this fires every few seconds and
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(createEvent) userInfo:nil repeats:YES];
}

- (void) createEvent {
    
    int number = arc4random_uniform(101);
    
    if (number < 50) {
        //NSLog(@"Zombies are coming!");
        zombie *zombieEvent = [[zombie alloc]init];
        [zombieEvent generateZombies];
    }
    
}



//RPGFactory *factory = [[RPGFactory alloc]init];
//self.tiles = [factory tiles];
//self.character = [factory character];
//self.boss = [factory boss];









@end
