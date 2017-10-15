//
//  Functions.h
//  ScientificCalculator
//
//  Created by Sindhu Vempati on 15/12/14.
//  Copyright (c) 2014 Sindhu Vempati. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Functions : NSObject
-(double)sum:(double)var1 :(double)var2;
-(double)sub:(double)var1 :(double)var2;
-(double)mul:(double)var1 :(double)var2;
-(double)div:(double)var1 :(double)var2;
-(double)inv:(double)var1 ;
-(double)sin:(double)var1 ;
-(double)cos:(double)var1 ;
-(double)tan:(double)var1 ;
-(double)log:(double)var1 ;
-(double) ln:(double)var1 ;
-(double) sqrt:(double)var1 ;
-(double) fact:(int)var1 ;
-(double)pow:(double)var1 :(double)var2;
-(double)radtodeg:(double)var1;
-(double)degtorad:(double)var1;
-(double)percent:(double)var1;

@end
