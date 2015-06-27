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
    
    //initailize the timers, which will run the game
    Timer *primaryTimer = [[Timer alloc]init];
    [primaryTimer worldTimer];
    [primaryTimer eventTimer];
    
    cityWallController * wallController = [[cityWallController alloc]init];
    [wallController createInitialWalls];
    [wallController worldTimer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
