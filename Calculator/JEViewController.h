//
//  JEViewController.h
//  Calculator
//
//  Created by Jasmine Talukder on 20/08/2014.
//  Copyright (c) 2014 Jasmine Enterprise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JEViewController : UIViewController{
    int operation;
    int number;
    double total;
    BOOL enterNumber;
    IBOutlet UILabel * display;
    
}

//@property (nonatomic) BOOL enterNumber;


-(IBAction)Number1:(id)sender;
-(IBAction)Number2:(id)sender;
-(IBAction)Number3:(id)sender;
-(IBAction)Number4:(id)sender;
-(IBAction)Number5:(id)sender;
-(IBAction)Number6:(id)sender;
-(IBAction)Number7:(id)sender;
-(IBAction)Number8:(id)sender;
-(IBAction)Number9:(id)sender;
-(IBAction)Number0:(id)sender;
-(IBAction)Multiply:(id)sender;
-(IBAction)Divide:(id)sender;
-(IBAction)Subtract:(id)sender;
-(IBAction)Plus:(id)sender;
-(IBAction)Equals:(id)sender;
-(IBAction)Clear:(id)sender;
-(IBAction)Binary:(id)sender;
-(IBAction)Moduluse:(id)sender;
//-(IBAction)Point:(id)sender;
-(IBAction)Delete:(id)sender;
@end
