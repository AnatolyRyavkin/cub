//git1 git2 master

//  ViewController.m
//  cub
//
//  Created by Anatoly Ryavkin on 26/03/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UIView*v1;
@property UIView*v2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.v1=[[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.v1.backgroundColor=[UIColor redColor];
    self.v2=[[UIView alloc]initWithFrame:CGRectMake(400, 100, 100, 100)];
    self.v2.backgroundColor=[UIColor brownColor];
    [self.view addSubview:self.v1];
     [self.view addSubview:self.v2];
    
  /* [UIView animateKeyframesWithDuration:10 delay:0 options: UIViewKeyframeAnimationOptionBeginFromCurrentState  animations:^{
        self.v1.frame=CGRectMake(568, 0, 200, 200);
        self.v1.backgroundColor=[UIColor yellowColor];
    } completion:^(BOOL finished)  {
        NSLog(@"animation finished = %i",finished);
    }];
    */
    
    
    [UIView transitionWithView:self.v1 duration:30 options: UIViewAnimationOptionBeginFromCurrentState
                   animations :^{
        self.v1.frame=CGRectMake(568, 800, 1000, 1000);
        self.v1.backgroundColor=[UIColor yellowColor];
    } completion:^(BOOL finished)  {
        NSLog(@"animation finished = %i",finished);
    }];
    
    double delayInSeconds = 3;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        
        [self.v1.layer removeAllAnimations];
        CALayer *presLayer = self.v1.layer.presentationLayer;
       //(CALayer *)
        //self.v1.layer.position = [presLayer position];
         //self.v1.layer.frame = presLayer.frame;                  // основа сохранения слоя!!!!!
        self.v2.layer.position = CGPointMake(100, 100);
        //[self.v1.layer removeFromSuperlayer];
        //[self.v1.layer addSublayer:presLayer];
        
        //[self.v1.layer presLayer];
        //self.v1.layer = presLayer;
        //self.v1.layer.backgroundColor = presLayer.backgroundColor;    // цвет можно и так!!!!
      
        //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!   только цвет ////////////////////
        
        [UIView transitionWithView:self.v1 duration:5 options: UIViewAnimationOptionBeginFromCurrentState //    <- work only at color  !!!!!!!
                        animations:^{
                            self.v1.frame=CGRectMake(0, 0, 100, 100);
                            self.v1.backgroundColor=[UIColor blueColor];
                        } completion:^(BOOL finished)  {
                            NSLog(@"animation finished = %i",finished);
                        }];
        
        
       // self.v2.layer.position = CGPointApplyAffineTransform([presLayer position], CGAffineTransformMakeTranslation(0, 0)); //[presLayer position];
        
    });
    
    double delayInSeconds1 = 12;
    dispatch_time_t popTime1 = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds1 * NSEC_PER_SEC));
    dispatch_after(popTime1, dispatch_get_main_queue(), ^(void){
    
        [UIView transitionWithView:self.v1 duration:5 options:UIViewAnimationOptionCurveLinear  | UIViewAnimationOptionBeginFromCurrentState
                        animations:^{
            self.v1.frame=CGRectMake(0, 0, 200, 200);
            self.v1.backgroundColor=[UIColor yellowColor];
        } completion:^(BOOL finished)  {
            NSLog(@"animation finished = %i",finished);
        }];
        
    });
    /*
    double delayInSeconds1 = 3;
    dispatch_time_t popTime1 = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds1 * NSEC_PER_SEC));
    dispatch_after(popTime1, dispatch_get_main_queue(), ^(void){
        //[self.v1.layer removeAllAnimations];
        [UIView animateKeyframesWithDuration:5 delay:0 options: UIViewKeyframeAnimationOptionBeginFromCurrentState  animations:^{
            self.v1.backgroundColor=[UIColor greenColor];
            self.v1.frame=CGRectMake(0, 824, 200, 200);
            
        } completion:^(BOOL finished)  {
            NSLog(@"animation finished = %i",finished);
        }];
        
    });
    
    
 
    [UIView setAnimationRepeatAutoreverses:YES] ;
    [UIView animateWithDuration:3
                          delay:0
                        options:  UIViewAnimationOptionCurveLinear // | UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                        self.v1.frame=CGRectMake(568, 824, 200, 200);
                         [UIView setAnimationRepeatCount:3.0] ;
                         
                     }
                     completion:^(BOOL finished)  {
                         NSLog(@"animation finished = %i",finished);
                          [UIView setAnimationRepeatAutoreverses:YES] ;                     }
     ];
    [UIView setAnimationRepeatAutoreverses:YES] ;
    
    double delayInSeconds1 = 3;
    dispatch_time_t popTime1 = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds1 * NSEC_PER_SEC));
    dispatch_after(popTime1, dispatch_get_main_queue(), ^(void){
        //[self.v1.layer removeAllAnimations];
        
    });
    
    double delayInSeconds = 3;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
         // [self.v1.layer removeAllAnimations];
        //[UIView setAnimationsEnabled:NO];
        //[UIView setAnimationBeginsFromCurrentState:YES];
        //[self.v1.layer removeAllAnimations];
        [UIView animateWithDuration:5
                              delay:-0.5
                            options: UIViewAnimationOptionCurveLinear  | UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             self.v1.backgroundColor=[UIColor greenColor];
                             self.v1.frame=CGRectMake(0, 824, 200, 200);
                         }
                         completion:^(BOOL finished)  {
                             NSLog(@"animation finished = %i",finished);
                         }
         ];
    });
    */
    
    
        
        
   /*
    NSLog(@"f1=%@",NSStringFromCGRect(self.v1.frame));
    UIViewPropertyAnimator*anime=[[UIViewPropertyAnimator alloc]initWithDuration:10 curve: UIViewAnimationCurveLinear animations:^{
        self.v1.frame=CGRectMake(568, 824, 200, 200);
    }];
    UIViewPropertyAnimator*anime1=[[UIViewPropertyAnimator alloc]initWithDuration:10 curve: UIViewAnimationCurveLinear animations:^{
        self.v1.frame=CGRectMake(0, 824, 200, 200);
    }];

   /* [anime addAnimations: ^{
        self.v1.backgroundColor=[UIColor greenColor];
        self.v2.transform=CGAffineTransformMake(1, 0,0, 1, -200, 400);  }
             delayFactor:0];
    /* git1
     [anime startAnimation];
    
    
    
    
    
    
    
    
    
   
    double delayInSeconds = 3;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
       // [image.layer removeAllAnimations];
       //  anime.pausesOnCompletion=YES;
        [anime stopAnimation:NO]; // !!!!!!!!!!!!!!!!!! если убрать то не работает!!!!!!!
        [anime finishAnimationAtPosition:  UIViewAnimatingPositionCurrent];
        //anime.finishAnimationAtPosition=YES;
        //  [anime pauseAnimation];
        NSLog(@"complete= %f",anime.fractionComplete);
        NSLog(@"state=%li",anime.state);
        //[anime stopAnimation:NO];
       // [anime stopAnimation:YES];
         //[anime1 startAnimation];
         //  [anime stopAnimation:YES];
        NSLog(@"f1=%@",NSStringFromCGRect(self.v1.frame));
         [self.v1.layer removeAllAnimations];
        
    });
    
    
    
    double delayInSeconds1 = 4;
    dispatch_time_t popTime1 = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds1 * NSEC_PER_SEC));
    dispatch_after(popTime1, dispatch_get_main_queue(), ^(void){
       
        //[anime stopAnimation:NO];
        NSLog(@"complete= %f",anime.fractionComplete);
        NSLog(@"state=%li",anime.state);
       /* [anime addAnimations: ^{
            self.v1.backgroundColor=[UIColor greenColor];
            self.v1.frame=CGRectMake(0, 824, 200, 200);
            //self.v2.transform=CGAffineTransformMake(1, 0,0, 1, -200, 400);
        }
                 delayFactor:0];
    
        [anime1 startAnimation];
        
          NSLog(@"complete= %f",anime.fractionComplete);
        NSLog(@"state=%li",anime.state);
        
    });
*/
}


@end
