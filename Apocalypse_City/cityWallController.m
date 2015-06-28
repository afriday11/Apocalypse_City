
//1. CHECK ~ make a seperate cityWallController class
//2. CHECK ~ create an initializer within the cityWall classs
//3. have citywallcontroller create array of walls
//4. modify them, attack them
//create array for inside the wall and outside the wall
//create functions to add and remove objects to arrays
//objects shouldn't create themselves
//timer should call assess function to access these private

//every class has a constructor
//function name is same as object

#import "cityWallController.h"

@implementation cityWallController

-(void) createInitialWalls
{
    self.wallArray = [[NSMutableArray alloc] initWithCapacity:11];
    
    for (int i = 0; i < 5; i++) {
        cityWall *wall = [[cityWall alloc]init];
        [_wallArray addObject:wall];
        NSLog(@"wall %@ created",wall.wallID);
    }
}

#pragma object generate events
-(void) generateZombies {
    
    zombie *zombieObject = [[zombie alloc]init];
    
    // city wall is fixed for the zombie, so you should first get the corresponding city wall in a temp variable
    cityWall *targetWall = [self.wallArray objectAtIndex:[zombieObject.attackDirection intValue]];
    
    //now simply access the array in the targetWall object and add the zombie object in it. Whatever you want to do with the horde can be done by extracting any particular zombie object or while you loop through the outsideWall of this particular wall to check status of each zombie object
    [[targetWall outsideWall] addObject:zombieObject];

    //NSLog(@"%@", zombieObject.attackDirection);
    //NSLog(@"%@", [targetWall outsideWall]);
    
}

-(void) generateCitizens {
    
    citizen *citizenObject = [[citizen alloc]init];
    
    NSLog(@"Attack power for new citizen is %@, HP is %@, and repair power is %@", citizenObject.attackPower, citizenObject.currentHP, citizenObject.repairPower);
}



//not sure if timers should go here, but I'd like to get them working first
#pragma timers

- (void) worldTimer{
    //this is the game's main timer. this fires every few seconds and controls minor events such as updating the health of the walls.
    //Also, what can I do about the "Uused variable 'timer'" message? The NSTimer is working how I want it, so I don't really see what is the problem.
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(worldEvent) userInfo:nil repeats:YES];
    
}

//this will generate zombies and heal fences
- (void) worldEvent {

    int randomNumber = arc4random_uniform(100);
    
    if (randomNumber < 99) {
        [self generateZombies];
    }
    
    if (randomNumber < 99){
        [self generateCitizens];
    }
    
    //repair function
}





#pragma object action events

-(void) attackWalls {
    
    for (int i; i < 6; i++) {
        cityWall *targetWall = [self.wallArray objectAtIndex:i];
        
        //NSNumber * attack = [NSNumber numberWithDouble:targetWall.outsideWall.count];
        
        //targetWall.currentHP = [NSNumber numberWithLong:([targetWall.currentHP integerValue] - [attack integerValue]);
    }
}














//I'd like to try to do a custom init at some point
//-(id) init{
//    if (self = [super init]){
//
//        self.wallArray = [[NSMutableArray alloc] initWithCapacity:11];
//
//        for (int i = 0; i < 5; i++) {
//            cityWall *wall = [[cityWall alloc]init];
//            [_wallArray addObject:wall];
//            NSLog(@"wall %@ created",wall.wallID);
//        }
//    return self;
//    }
//}
     



@end
