//
//  CalViewController.m
//  ScientificCalculator
//
//  Created by Sindhu Vempati on 15/12/14.
//  Copyright (c) 2014 Sindhu Vempati. All rights reserved.
//

#import "CalViewController.h"
#import "Functions.h"



typedef enum {Add,Sub,Div,Mul,Sin,Cos,Log,Ln,Tan,Pow,Fact,Inv,Percent,Sqrt,Pi,logE} Calculation;

@interface CalViewController ()
{
    Functions *fun ;
    NSString *number;
    double storeValue;
    double ansValue;
    double changeVal;
    NSString *cancelValue;
    
}

@property (weak, nonatomic) IBOutlet UIButton *btnSin;

@property (weak, nonatomic) IBOutlet UIButton *btnCos;

@property (weak, nonatomic) IBOutlet UIButton *btnTan;

@property (weak, nonatomic) IBOutlet UIButton *btnLog;

@property (weak, nonatomic) IBOutlet UIButton *btnLn;

@property (weak, nonatomic) IBOutlet UIButton *btnSqrt;

@property (weak, nonatomic) IBOutlet UIButton *btnFact;

@property (weak, nonatomic) IBOutlet UIButton *btnPow;

@property (weak, nonatomic) IBOutlet UIButton *btnRad;

@property (weak, nonatomic) IBOutlet UIButton *btndot;

@property (weak, nonatomic) IBOutlet UIButton *toggle;

@property (weak, nonatomic) IBOutlet UIButton *toggleClear;

@property (weak, nonatomic) IBOutlet UIButton *btnPercent;

@property (weak, nonatomic) IBOutlet UIButton *btnInv;


@end

@implementation CalViewController
{
    Calculation operation;
    NSString *storage;
}

@synthesize display,outputdisplay,toggle,toggleClear,lblstring;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        fun = [[Functions alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [self Disabling];
    
    [super viewDidLoad];
   
}
-(void)Disabling
{
    if ([display.text isEqual:@""]) {
        [self buttonDisable];
        self.btnInv.enabled = false;
        self.btnPercent.enabled =false;
    }
}
-(void)buttonDisable
{
    self.btnCos.enabled = false;
    self.btnTan.enabled = false;
    self.btnLn.enabled = false;
    self.btnLog.enabled = false;
    self.btnSqrt.enabled = false;
    self.btnFact.enabled = false;
    self.btnPow.enabled = false;
    self.btnSin.enabled = false;
}

-(void)buttonEnable
{
    self.btnCos.enabled = true;
    self.btnTan.enabled = true;
    self.btnLn.enabled = true;
    self.btnLog.enabled = true;
    self.btnSqrt.enabled = true;
    self.btnFact.enabled = true;
    self.btnPow.enabled = true;
    self.btnSin.enabled = true;
    self.btndot.enabled =true;
    
}

-(void)degradWork
{
    if([toggle.titleLabel.text isEqual: @"Deg"])
    changeVal = [fun degtorad:[storage doubleValue]];
    else
        changeVal = [storage doubleValue];
}

-(void)calcWork
{
    if (storeValue) {
        storage = [NSString stringWithFormat:@"%f",storeValue];
        display.text = @"";
        
    }else{
        storage = display.text;
        display.text = @"";
    }
}

-(void)textClear
{
if (display.text)
    {
    [toggleClear setTitle:@"C" forState:UIControlStateNormal];
        [self buttonEnable];
//        self.btnInv.enabled = true;
//        self.btnPercent.enabled =true;
        
    }
}


- (IBAction)btn1:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@1",display.text];
    [self textClear];

}


- (IBAction)btn2:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@2",display.text];
    [self textClear];

}

- (IBAction)btn3:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@3",display.text];
    [self textClear];

}

- (IBAction)btn4:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@4",display.text];
    [self textClear];

}

- (IBAction)btn5:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@5",display.text];
    [self textClear];

}

- (IBAction)btn6:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@6",display.text];
    [self textClear];

}

- (IBAction)btn7:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@7",display.text];
    [self textClear];

}

- (IBAction)btn8:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@8",display.text];
    [self textClear];

}

- (IBAction)btn9:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@9",display.text];
    [self textClear];

}

- (IBAction)btn0:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@0",display.text];
    [self textClear];

}

- (IBAction)point:(UIButton *)sender
{
    display.text=[NSString stringWithFormat:@"%@.",display.text];
    [self textClear];

    self.btndot.enabled =false;
    [self buttonDisable];

}

- (IBAction)radeg:(UIButton *)sender
{
    if ([toggle.titleLabel.text  isEqual: @"Rad"]) {
        [toggle setTitle:@"Deg" forState:UIControlStateNormal];

    }
    else{
        [toggle setTitle:@"Rad" forState:UIControlStateNormal];
        

    }

}


- (IBAction)add:(UIButton *)sender
{
    
    operation = Add;
    [self calcWork];
   
    NSLog(@"store in add btn %f",storeValue);
    
}

- (IBAction)sub:(UIButton *)sender
{
    operation = Sub;
    [self calcWork];

}

- (IBAction)mul:(UIButton *)sender
{
    operation = Mul;
    [self calcWork];


}


- (IBAction)div:(UIButton *)sender
{
    operation = Div;
    [self calcWork];


}

- (IBAction)percent:(UIButton *)sender
{
    operation = Percent;
    [self calcWork];



}


- (IBAction)sin:(UIButton *)sender
{
    operation = Sin;
    
    storage = display.text;
    display.text=[NSString stringWithFormat:@"sin %@",storage];
    [self buttonDisable];

}


- (IBAction)cos:(UIButton *)sender
{
    operation = Cos;
    storage = display.text;
    display.text=[NSString stringWithFormat:@"cos %@",storage];
    [self buttonDisable];


}

- (IBAction)tan:(UIButton *)sender
{
    operation = Tan;
    storage = display.text;
   
    if ([toggle.titleLabel.text  isEqual: @"Deg"])
    {
    if ([storage intValue]==90||([storage intValue]>180 && [storage intValue]%180!=0))
       {
           outputdisplay.text = @"inf";
           [toggleClear setTitle:@"AC" forState:UIControlStateNormal];

   
       }
    }
    
    display.text=[NSString stringWithFormat:@"tan %@",storage];

    [self buttonDisable];

}


- (IBAction)pi:(UIButton *)sender
{
    operation = Pi;
    storage = display.text;
    display.text=[NSString stringWithFormat:@"3.14 %@",storage];
    

}

- (IBAction)log:(id)sender
{
    operation = Log;
    storage = display.text;
    display.text=[NSString stringWithFormat:@"log %@",storage];
    [self buttonDisable];


}


- (IBAction)ln:(UIButton *)sender
{
    operation = Ln;
    storage = display.text;
    display.text=[NSString stringWithFormat:@"ln %@",storage];
    [self buttonDisable];

 
}


- (IBAction)sqrt:(UIButton *)sender
{
    operation = Sqrt;
    
    storage = display.text;
    display.text=[NSString stringWithFormat:@"sqrt %@",storage];
    [self buttonDisable];


}

- (IBAction)fact:(UIButton *)sender
{
    operation = Fact;
    storage=display.text;
    display.text=[NSString stringWithFormat:@"fact %@",storage];
    [self buttonDisable];

}




- (IBAction)pow:(UIButton *)sender
{
    operation = Pow;
    storage = display.text;
    display.text = @"";
    [self buttonDisable];

}


- (IBAction)esymbol:(UIButton *)sender
{
    operation = logE;
    storage = display.text;
    display.text=[NSString stringWithFormat:@"2.718 %@",storage];
    
}


- (IBAction)inv:(UIButton *)sender
{
    operation=Inv;
    storage = display.text;
    display.text = [NSString stringWithFormat:@"1/%@",storage];

}

- (IBAction)clearall:(UIButton *)sender
{
   
    if ([toggleClear.titleLabel.text isEqual:@"C"])
    {
      
        cancelValue = [display.text substringToIndex:[display.text length] - 1];
        display.text = cancelValue;
        if ([display.text isEqual:@""])
        {
            
            [toggleClear setTitle:@"AC" forState:UIControlStateNormal];
            
            
        }


    }
    
    if ([toggleClear.titleLabel.text isEqual:@"AC"])
    {
    display.text = @"";
    outputdisplay.text = @"";
        lblstring.text=@"";
        
    storeValue = 0;
    }
    [self buttonEnable];
    
}

- (IBAction)result:(UIButton *)sender
{
   NSString *val = display.text;
    switch(operation)
    {
        case Add :
            storeValue =[fun sum:[storage doubleValue] :[val doubleValue]];
            NSLog(@"storevalue in add is %f",storeValue);
            lblstring.text = [NSString stringWithFormat:@"%@ + %@ =",storage,val];
           outputdisplay.text= [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];
            
            break;
        case Sub:
            storeValue =[fun sub:[storage doubleValue] :[val doubleValue]];
            outputdisplay.text= [NSString stringWithFormat:@"%f", storeValue];
            lblstring.text = [NSString stringWithFormat:@"%@ - %@ =",storage,val];
            ansValue = [outputdisplay.text doubleValue];


            break;
        case Div :
            storeValue = [fun div:[storage doubleValue] :[val doubleValue]];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            display.text = [NSString stringWithFormat:@"%@ / %@",storage,val];
            ansValue = [outputdisplay.text doubleValue];

            break;
            
        case Mul:
            storeValue =[fun mul:[storage doubleValue] :[val doubleValue]];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            display.text = [NSString stringWithFormat:@"%@ * %@",storage,val];
            ansValue = [outputdisplay.text doubleValue];

            break;
            
        case Sin :
            
            [self degradWork];
            storeValue = [fun sin:changeVal];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];

            break;
            
        case Cos:
            
            [self degradWork];

            storeValue =    [fun cos:changeVal];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];

            break;
            
        case Tan:
            [self degradWork];
            
         
            storeValue = [fun tan:changeVal];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];
          
            break;
            
        case Log:
            storeValue = [fun log:[storage doubleValue]];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];

            break;
            
        case Ln:
            storeValue = [fun ln:[storage doubleValue]];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];

            break;
            
        case Sqrt:
            storeValue = [fun sqrt:[storage doubleValue]];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];

            break;
            
        case Fact:
            storeValue = [fun fact:[storage doubleValue]];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];

            break;
            
        case Pow:
            storeValue = [fun pow:[storage doubleValue] :[val doubleValue]];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];
            
            break;
            
        case Inv:
            storeValue =[fun inv:[storage doubleValue]];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];
            break;
            
        case Percent:
            storeValue =[fun percent:[storage doubleValue]];
            outputdisplay.text = [NSString stringWithFormat:@"%f",storeValue];
            ansValue = [outputdisplay.text doubleValue];
            break;

        
            default:
            outputdisplay.text = @"Error";
            break;
            
            
}
    if ([toggleClear.titleLabel.text isEqual:@"C"])
    {
        [toggleClear setTitle:@"AC" forState:UIControlStateNormal];
        
        
    }
    display.text =@"";



}
- (IBAction)btnAns:(UIButton *)sender
{
   display.text =[NSString stringWithFormat:@"%f",ansValue] ;
    

}

@end
