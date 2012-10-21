#What is PSDHUDSpeed#
PSDHUDSpeed, is a control for iOS that displays the user's speed mirrored in the screens so that when the user puts his iPhone on the console of his car,the speed is displayed in the windshield (right not mirrored). 

<img src="http://psdwp.anadelta.gr/wp-content/uploads/2012/10/IMG_0912.png" width="480" height="320"/>

#How to use PSDHUDSpeed#

Using PSDHUDSpeed is really easy!!
First of all, you must import PSDHUDSpeed at the .h file of your class. You can do it by adding this line before the @interface line. 

``` objc
#import "PSDHUDSpeed.h"
```
In order to initialize PSDQuizController, you must add the following line.
```objc
PSDHUDSpeed *myHUDSpeed = [[PSDHUDSpeed alloc]initWithSpeedColor:textColorOfTheSpeed AndFontSize:fontSizeOfSpeed AndSpeedUnit:aSpeedUnit];
```
SpeedColor parameter is the text color of the label that displays the speed value. It gets UIColor values.
AndFontSize parameter is the font size of the label that displays the speed value. It gets float values.
AndSpeedUnit parameter is the unit of speed in which you want the speed to be displayed. It can only get the following values: 

1. *MetersPerSecond*: for meters/second speed unit.
2. *KilometersPerHour*: for Km/hour speed unit.
3. *Knots*: for Knots speed unit.
4. *MilesPerHour*: for Mi/hour speed unit.

After ypu complete this step, you can present PSDHUDSpeed as another view controller. 

#Properties#
The only property of PSDHUDSpeed, is the *BackButton* property. It gets UIButton values 

#License#
*Copyright (c) 2012 Petros Demetrakopoulos*

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


