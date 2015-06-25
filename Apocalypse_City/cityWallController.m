
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

-(void) generateZombies {
    zombie *zombieObject = [[zombie alloc]init];

    //Tried to add zombies to the outside wall array of the correct wall. but am having trouble with nested arrays/
     [[self.wallArray objectAtIndex:[zombieObject.attackDirection intValue]] addObject:[NSNumber numberWithInt:([zombieObject.hordeNumber intValue])]];

    [[[self.wallArray objectAtIndex:[zombieObject.attackDirection intValue]] isEqualToString:[NSString @"outsideWall"] addObject:[NSNumber numberWithFloat:zombieObject.hordeNumber]];
    
     
    
    //[[wallArray objectAtIndex:] addObject:obj];
    //[zombieObject assignZombies:zombieObject.hordeNumber fromDirection:zombieObject.attackDirection];

}


@end
