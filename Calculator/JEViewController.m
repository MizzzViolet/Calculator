//
//  JEViewController.m
//  Calculator
//
//  Created by Jasmine Talukder on 20/08/2014.
//  Copyright (c) 2014 Jasmine Enterprise. All rights reserved.
//

#import "JEViewController.h"

@interface JEViewController ()

@end

@implementation JEViewController

//@synthesize enterNumber = _enterNumber;
//-(IBAction)NumPressed:(id)sender{
//    number = number * 10 + (double)[sender tag];
//   // number=[sender currentTitle];//get the current title of the button pressed
//    display.text=[NSString stringWithFormat:@"%i", number];
//    
//  //  display.text = [NSString stringWithFormat:@"%.2f", number];
////    NSString *digit = [sender currentTitle];
////    display.text = [display.text stringByAppendingString:digit];
//}
-(IBAction)Number1:(id)sender{
    number = number * 10;
    number = number + 1;

    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Number2:(id)sender{
  
    number = number * 10;
    number = number + 2;
   
    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Number3:(id)sender{
    number = number * 10;
    number = number + 3;
    
    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Number4:(id)sender{
    number = number * 10;
    number = number + 4;
    
    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Number5:(id)sender{
    number = number * 10;
    number = number + 5;
    
    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Number6:(id)sender{
    number = number * 10;
    number = number + 6;
    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Number7:(id)sender{
    number = number * 10;
    number = number + 7;
    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Number8:(id)sender{
    number = number * 10;
    number = number + 8;
    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Number9:(id)sender{
    number = number * 10;
    number = number + 9;
    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Number0:(id)sender{
    number = number * 10;
    number = number + 0;
    display.text = [NSString stringWithFormat:@"%i", number];
}
-(IBAction)Multiply:(id)sender{
    
    if(total == 0){
        total = number;
    }
    else{
        switch(operation){
            case 1:
                total = total * number;
                break;
                
            case 2:
                total = total / number;
                break;
            case 3:
                total = total - number;
                break;
                
            case 4:
                total = total + number;
                break;
            case 5:
                total = (int)total % (int)number;
                break;
            default:
                break;
        }
    }
   // enterNumber=NO;
    operation = 1;
    number = 0;
}
-(IBAction)Divide:(id)sender{
  
    if(total == 0){
        total = number;
    }
    else{
        switch(operation){
            case 1:
                total = total * number;
                break;
                
            case 2:
                total = total / number;
                break;
            case 3:
                total = total - number;
                break;
                
            case 4:
                total = total + number;
                break;
            case 5:
                total = (int)total % (int)number;
                break;
            default:
                break;
        }
    }
  //  enterNumber=NO;
    operation = 2;
    number = 0;
}
-(IBAction)Subtract:(id)sender{
    
    if(total == 0){
        total = number;
    }
    else{
        switch(operation){
            case 1:
                total = total * number;
                break;
                
            case 2:
                total = total / number;
                break;
            case 3:
                total = total - number;
                break;
                
            case 4:
                total = total + number;
                break;
            case 5:
                total = (int)total % (int)number;
                break;
            default:
                break;
        }
    }
   // enterNumber=NO;
    operation = 3;
    number = 0;
}
-(IBAction)Plus:(id)sender{
    
    if(total == 0){
        total = number;
    }
    else{
        switch(operation){
            case 1:
                total = total * number;
                break;
                
            case 2:
                total = total / number;
                break;
            case 3:
                total = total - number;
                break;
                
            case 4:
                total = total + number;
                break;
            case 5:
                total = (int)total % (int)number;
                break;
            default:
                break;
        }
    }
  //  enterNumber=NO;
    operation = 4;
    number = 0;
    
}
-(IBAction)Equals:(id)sender{
    //number = [display text];
    if(total == 0){
        total = number;
    }
    else{
        switch(operation){
            case 1:
                total = total * number;
                break;
                
            case 2:
                total = total / number;
                break;
            case 3:
                total = total - number;
                break;
                
            case 4:
                total = total + number;
                break;
            case 5:
                total = (int)total % (int)number;
                break;
            default:
                break;
        }
    }
    
    operation = 0;
    number = 0;
    display.text = [NSString stringWithFormat:@"%.2f",total];
}
-(IBAction)Clear:(id)sender{
    operation = 0;
    total = 0;
    number = 0;
  //  enterNumber=NO;
    display.text = [NSString stringWithFormat:@"0"];
}
-(IBAction)Binary:(id)sender{
    NSMutableString * string = [[NSMutableString alloc] init];
    
   // int spacing = pow( 2, 3 );
    //int width = ( sizeof( number ) ) * spacing;
    int width = ( sizeof( number ) );
    int binaryDigit = 0;
    int integer = number;
    
    while( binaryDigit < width )
    {
        binaryDigit++;
        
        [string insertString:( (integer & 1) ? @"1" : @"0" )atIndex:0];
        
       // if( binaryDigit % spacing == 0 && binaryDigit != width )
        if(binaryDigit != width )
        {
            [string insertString:@" " atIndex:0];
        }
        
        integer = integer >> 1;
    }
    display.text = [NSString stringWithFormat:@"%@",string];
   
//          NSString *binary = @"";
//          int two = 2;
//          int copy1 = number;
//          int copy2 = 0;
//          int count = 0;
//          while (copy1 != 0) {
//              copy2 = copy1;
//              copy1 /= two;
//              count++;
//          }
//          int bin [count];
//          for (int i = 0; i < count; i++) {
//              copy2 = number;
//              number /= two; // copy1 = 7/2 -> copy1 = 3
//              copy2 = copy2 % two; // copy2 = 1
//              bin[i] = copy2;
//          }
//          for (int i = count - 1; i >= 0; i--) {
//              *binary += [@(bin[i]) stringValue];
//          }
//           display.text = [NSString stringWithFormat:@"%@",binary];
    //      int bib = 12;
  //  binary = Integer.toBinaryString(num);
    //System.out.print(Integer.toBinaryString(bib));
    
}

-(IBAction)Delete:(id)sender{
    number = number/10;
    display.text = [NSString stringWithFormat:@"%i",number];
}

//-(IBAction)Point:(id)sender{
//
//    
//    NSRange range = [display.text rangeOfString:@"."];
//    if (range.location ==NSNotFound && !enterNumber){
//       display.text = [ display.text stringByAppendingFormat:@"."];
//    }
//}
-(IBAction)Moduluse:(id)sender{
    
    if(total == 0){
        total = number;
    }
    else{
        switch(operation){
            case 1:
                total = total * number;
                break;
                
            case 2:
                total = total / number;
                break;
            case 3:
                total = total - number;
                break;
                
            case 4:
                total = total + number;
                break;
            case 5:
                total = (int)total % (int)number;
                break;
            default:
                break;
        }
    }
    enterNumber=NO;
    operation = 5;
    number = 0;
}
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

@end
