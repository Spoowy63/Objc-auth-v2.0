#import "SCLAlertView/SCLAlertView.h"
#import <Foundation/Foundation.h>


#define timer(sec) dispatch_after(dispatch_time(DISPATCH_TIME_NOW, sec * NSEC_PER_SEC), dispatch_get_main_queue(), ^



NSString *numbers;
NSString* uuid;
NSString *shorterUuid;
NSString *intToString;
NSString *ID;
NSString *Title;
NSUserDefaults *abbsj;
NSString *coolstring;
NSUserDefaults *twee;
NSString *twe;



static void didFinishLaunching(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef info) {
timer(3) {

//encode your website link in base64 and put it here 
NSData *gygyhh = [[NSData alloc] initWithBase64EncodedString:@"BASE64 ENCODED LINK GOES HERE" options:0];
NSString *tfrdccf = [[NSString alloc] initWithData:gygyhh encoding:NSUTF8StringEncoding];


abbsj = [NSUserDefaults standardUserDefaults];
coolstring = [abbsj stringForKey:@"coolstring"];

twee = [NSUserDefaults standardUserDefaults];
twe = [twee stringForKey:@"twe"];


Title = @"Your ID = ";


uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];


numbers = [[uuid componentsSeparatedByCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]] componentsJoinedByString:@""];


shorterUuid = [numbers substringToIndex:6];

int intUuid = [shorterUuid intValue];
//CHANGE THESE VALUES
int a = 19;
int b = 43106;
int c = 54;
int d = 9865410;

// Some math 
int math = intUuid * a - b * c + d;

intToString = [NSString stringWithFormat:@"%d",math];

ID = [NSString stringWithFormat:@"%@%@", Title, shorterUuid];

SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindowWidth:270];
SCLAlertView *good = [[SCLAlertView alloc] initWithNewWindowWidth:270];

UITextField *text1 = [alert addTextField:@"key"];


	[alert addButton:@"Tap To Copy Your ID" validationBlock:^BOOL {
		[[UIPasteboard generalPasteboard] setString:shorterUuid];   
		BOOL shouldClosePopup = false;
		return shouldClosePopup;
	} actionBlock:^{}];    
	
	
[alert addButton: @"Telegram" validationBlock: ^BOOL {
      [[UIApplication sharedApplication] openURL: [NSURL URLWithString:tfrdccf]];
BOOL shouldClosePopup = false;
return shouldClosePopup;
} actionBlock:^{}];


    [alert addButton: @"UNLOCK" actionBlock: ^(void) {
      timer(0.5) {
if ([text1.text isEqualToString:intToString]) {
[twee setObject:text1.text forKey:@"twe"];
[twee synchronize];

[abbsj setObject:@"flipy" forKey:@"coolstring"];
[abbsj synchronize];
} else {
exit(0);
}
      });
    }];    

    alert.shouldDismissOnTapOutside = NO;
    alert.customViewColor = [UIColor blackColor];  
    alert.showAnimationType = SCLAlertViewShowAnimationSlideInFromCenter;   
	
	    good.shouldDismissOnTapOutside = NO;
    good.customViewColor = [UIColor blackColor];  
    good.showAnimationType = SCLAlertViewShowAnimationSlideInFromCenter; 

if(![coolstring isEqualToString:@"flipy"]) {    
    [alert showWaiting:ID
            subTitle:@"Copy the ID And Send It To Me. \n\nTelegram: FlipFlop7  \nMade By Spoowy"
              closeButtonTitle:nil
                duration:99999999.0f];
				}
				
	[good addButton: @"Thanks" actionBlock: ^(void) {
	if ([twe isEqualToString:intToString]) {
	  } else {
exit(0);
	  [abbsj setObject:@"no" forKey:@"coolstring"];
[abbsj synchronize];
}
    }]; 
	
		
if([coolstring isEqualToString:@"flipy"]) { 		
if ([twe isEqualToString:intToString]) {
	  } else {
	  [abbsj setObject:@"no" forKey:@"coolstring"];
[abbsj synchronize];
timer(1.0) {
exit(0);
});
}

timer(1.5) {
	[good showSuccess:@"Made By Spoowy" 
            subTitle:@"Telegram: FlipFlop7"
              closeButtonTitle:nil
                duration:99999999.0f];
});
}

});
}
%ctor {
  CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), NULL, &didFinishLaunching, (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}


