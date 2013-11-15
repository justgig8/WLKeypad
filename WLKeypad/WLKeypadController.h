//
//  WLKeypadController.h
//  WLKeypad
//
//  Created by Gaurav on 15/11/13.
//  Copyright (c) 2013 Weird Logics. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WLKeypadDelegate <NSObject>

//-(void) pressNumber: (NSNumber *)number;
//-(void) reset;
//-(void) back;
-(void) returnValue: (NSString *)value;

@end

@interface WLKeypadController : UIViewController

@property (nonatomic, weak) id<WLKeypadDelegate> delegate;
@property (nonatomic, weak) NSNumber *maxLength;
@property (nonatomic, weak) NSString *placeholder;

@end
