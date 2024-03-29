//
//  HUD.h
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

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h> 
#import <CoreLocation/CLLocationManagerDelegate.h> 
@interface PSDHUDSpeed: UIViewController<CLLocationManagerDelegate>
{
    UILabel *Speed;
   
    CLLocationManager *locationManager;
}
-(void)Back;
-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation;
typedef enum {
    MetersPerSecond = 1,KilometersPerHour = 2, Knots = 3, MilesPerHour = 4
}unit;
-(id)initWithSpeedColor:(UIColor *)speedColor AndFontSize:(float)fontSize AndSpeedUnit:(unit)SpeedUnit;
@property (nonatomic,assign) unit SpeedUnit;
@property (nonatomic,retain)  UIButton *BackButton;
@end
