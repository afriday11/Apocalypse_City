//
//  ViewController.m
//  Apocalypse_City
//
//  Created by Andrew Friday on 5/4/15.
//  Copyright (c) 2015 Friday. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self worldTimer];
    
    int i = 0;
    for (i = 0; i < 4; i++) {
        cityWall * wall = [[cityWall alloc]init];
        [wall createWall];
    }
    
}


//create the timer, which then calls the create event every second
- (void) worldTimer
    {
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(createEvent) userInfo:nil repeats:YES];
    }

//create event will generate a random number to determin if any events are happening. If they are create event will call on various functions to create objects that effect the gameplay.
- (void) createEvent {
    
    int number = arc4random_uniform(101);
    
    if (number < 50) {
        
        zombie *newZombie = [[zombie alloc]init];
        [newZombie generateZombies];
        
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
