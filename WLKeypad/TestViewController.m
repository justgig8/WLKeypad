//
//  TestViewController.m
//  WLKeypad
//
//  Created by Gaurav on 15/11/13.
//  Copyright (c) 2013 Weird Logics. All rights reserved.
//

#import "TestViewController.h"

#import "WLKeypadController.h"

@interface TestViewController ()<WLKeypadDelegate>
    

@end

@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    WLKeypadController *keypad = (WLKeypadController *) self.childViewControllers.lastObject;
    keypad.delegate=self;
    keypad.maxLength = [NSNumber numberWithInt:5];
}

-(void) returnValue: (NSString *)value{
    NSLog(@"value returned: %@", value);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
