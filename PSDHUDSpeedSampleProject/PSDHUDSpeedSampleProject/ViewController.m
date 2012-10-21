//
//  ViewController.m
//  PSDHUDSpeedSampleProject
//
//  Created by Petros Demetrakopoulos on 10/21/12.
//  Copyright (c) 2012 Petros Demetrakopoulos. All rights reserved.
//

#import "ViewController.h"
#import "PSDHUDSpeed.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)GotoPSDHUDSpeed{
    PSDHUDSpeed *myPSDHUDSpeed = [[PSDHUDSpeed alloc]initWithSpeedColor:[UIColor redColor] AndFontSize:35.0 AndSpeedUnit:KilometersPerHour];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [backBtn setTitle:@"Back" forState:UIControlStateNormal];
    [backBtn setFrame:CGRectMake(185, 252, 110, 39)];
    myPSDHUDSpeed.BackButton = backBtn;
    [self presentViewController:myPSDHUDSpeed animated:YES completion:nil];
}
@end
