//
//  HUD.m
//  Acculoc
//
//  Created by Petros Demetrakopoulos on 2/24/12.
/* Copyright (c) 2012 Petros Demetrakopoulos
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
 modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
 Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


#import "PSDHUDSpeed.h"
@implementation PSDHUDSpeed;
-(id)initWithSpeedColor:(UIColor *)speedColor AndFontSize:(float)fontSize AndSpeedUnit:(unit)SpeedUnit
{
    if (self = [super init]) {
        Speed = [[UILabel alloc]initWithFrame:CGRectMake(123, 29, 235, 215)];
        Speed.textColor = speedColor;
        Speed.font = [UIFont systemFontOfSize:fontSize];
        self.SpeedUnit = SpeedUnit;
    }
    return self;
}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
-(void)Back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation 
          fromLocation:(CLLocation *)oldLocation{
    if (newLocation.speed < 0){
    Speed.text = @"Determining...";
    }
    else{ 
        if(self.SpeedUnit == KilometersPerHour){
            Speed.text = [NSString stringWithFormat:@"%.2f Km/h",newLocation.speed * 3.6]; 
        } else if (self.SpeedUnit == MilesPerHour){
            Speed.text = [NSString stringWithFormat:@"%.2f Mi/h",newLocation.speed * 2.2369];
        } else if (self.SpeedUnit == Knots){
            Speed.text = [NSString stringWithFormat:@"%.2f Knots",newLocation.speed * 1.9438];
        }else if (self.SpeedUnit == MetersPerSecond){
                Speed.text = [NSString stringWithFormat:@"%.2f M/s",newLocation.speed]; 
            }
    else {
            Speed.text = [NSString stringWithFormat:@"%.2f Km/h",newLocation.speed * 3.6];  
        }
    }
}
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    Speed.text = [NSString stringWithFormat:@"Determining..."];
}

#pragma mark - View lifecycle
-(void)loadView{
    self.view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.view.backgroundColor = [UIColor blackColor];
    if (self.BackButton == nil) {
        self.BackButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.BackButton setTitle:@"Back" forState:UIControlStateNormal];
   [self.BackButton setFrame:CGRectMake(185, 252, 110, 39)];
    
    } else{
        self.BackButton = self.BackButton;
    }
    Speed.backgroundColor = [UIColor blackColor];
     [self.BackButton addTarget:self action:@selector(Back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.BackButton];
    [self.view addSubview:Speed];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    locationManager =[[CLLocationManager alloc] init];
	locationManager.delegate = self;
	locationManager.distanceFilter = kCLDistanceFilterNone;
	locationManager.desiredAccuracy = kCLLocationAccuracyBest;
	[locationManager startUpdatingLocation];
    Speed.transform  = CGAffineTransformMakeScale(1,-1);
    self.BackButton.transform = CGAffineTransformMakeScale(1, -1);
    
}
-(void)viewWillAppear:(BOOL)animated{
    if (locationManager.location.speed < 0){
        Speed.text = @"Determining...";
    } else{
        if(self.SpeedUnit = KilometersPerHour){
            Speed.text = [NSString stringWithFormat:@"%.2f Km/h",locationManager.location.speed * 3.6]; 
        } else if (self.SpeedUnit = MilesPerHour){
            Speed.text = [NSString stringWithFormat:@"%.2f Mi/h",locationManager.location.speed * 2.2369];
        } else if (self.SpeedUnit = Knots){
            Speed.text = [NSString stringWithFormat:@"%.2f Knots",locationManager.location.speed * 1.9438];
        } else  {
            Speed.text = [NSString stringWithFormat:@"%.2f Km/h",locationManager.location.speed * 3.6];  
        }
    }
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    
    return NO;
}
@end
