//
//  Functions.m
//  ScientificCalculator
//
//  Created by Sindhu Vempati on 15/12/14.
//  Copyright (c) 2014 Sindhu Vempati. All rights reserved.
//

#import "Functions.h"

@implementation Functions



-(double)sum:(double)var1 :(double)var2
{
    return var1+var2;
}
-(double)sub:(double)var1 :(double)var2
{
    return var1-var2;

}
-(double)mul:(double)var1 :(double)var2
{
    return var1*var2;

}
-(double)div:(double)var1 :(double)var2
{
    return var1/var2;

}
-(double)inv:(double)var1
{
    return 1/var1;

}
-(double)sin:(double)var1
{
    return sin(var1);
}
-(double)cos:(double)var1
{
    return cos(var1);
}
-(double)tan:(double)var1
{
    return tan(var1);
 
    
}
-(double)log:(double)var1
{
    return log10(var1);
}
-(double) ln:(double)var1
{
    return log(var1);
}
-(double) sqrt:(double)var1
{
    return sqrt(var1);
}
-(double) fact:(int)var1
{
    if (var1==0||var1==1)
    return 1;
    else
    {
        double product =1;
        for(int x=var1;x>1;x--)
        {
             product = x*product;
        }
        return product;
    }
    
}
-(double)pow:(double)var1 :(double)var2
{

    return pow(var1, var2);
    
}

-(double)percent:(double)var1
{
    return var1/100;
}


-(double)radtodeg:(double)var1
{
    return var1*57.295779;
}

-(double)degtorad:(double)var1
{
    return var1*0.0174532925;
}



@end
