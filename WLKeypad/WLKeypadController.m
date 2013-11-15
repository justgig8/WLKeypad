//
//  WLKeypadController.m
//  WLKeypad
//
//  Created by Gaurav on 15/11/13.
//  Copyright (c) 2013 Weird Logics. All rights reserved.
//

#import "WLKeypadController.h"

@interface WLKeypadController (){
    
    IBOutlet UITextField *textField;
}

@end

@implementation WLKeypadController

@synthesize delegate;
@synthesize maxLength, placeholder;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    maxLength = [NSNumber numberWithInt:3];
    placeholder = @"Password";
    
    NSMutableParagraphStyle *mps = [[NSMutableParagraphStyle alloc] init];
    mps.firstLineHeadIndent = 15.0f;
    textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName : [UIFont boldSystemFontOfSize:17.0f], NSParagraphStyleAttributeName : mps}];
    
    textField.attributedText = [[NSAttributedString alloc] initWithString:@"" attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName : [UIFont boldSystemFontOfSize:17.0f], NSParagraphStyleAttributeName : mps}];
}

-(IBAction)enter:(id)sender{
    if ([delegate respondsToSelector:@selector(returnValue:)]) {
        [delegate performSelector:@selector(returnValue:) withObject:textField.text];
    }
}

-(IBAction)press:(id)sender{
    UIButton *button = (UIButton *)sender;
    NSLog(@"key pressed: %d", button.tag);
    NSString *number = [NSString stringWithFormat:@"%d", button.tag];
    if (textField.text.length < maxLength.intValue) {
        textField.text = [textField.text stringByAppendingString:number];
    }else{
        
    }
//    if ([delegate respondsToSelector:@selector(pressNumber:)]) {
//        [delegate performSelector:@selector(pressNumber:) withObject:[NSNumber numberWithInt:button.tag]];
//    }
}

-(IBAction)reset:(id)sender{
    textField.text = @"";
//    if ([delegate respondsToSelector:@selector(reset)]) {
//        [delegate performSelector:@selector(reset)];
//    }
}

-(IBAction)back:(id)sender{
    if (textField.text.length>0) {
        textField.text = [textField.text substringToIndex:textField.text.length-1];
    }
//    if ([delegate respondsToSelector:@selector(back)]) {
//        [delegate performSelector:@selector(back)];
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
