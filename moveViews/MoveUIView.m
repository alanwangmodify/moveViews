//
//  MoveUIView.m
//  moveViews
//
//  Created by apple on 15/6/23.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "MoveUIView.h"

@implementation MoveUIView
-(instancetype)init{
    self = [super init];
    if (self) {
        [self setMoveAcion];
    }
    return self;
    
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];

    if (self) {
        [self setMoveAcion];
    }
    return self;

}
-(void)setMoveAcion {
    
    self.enableMove = YES;
    UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(gestureAction:)];
    [self addGestureRecognizer:gesture];
}
-(void)enableMoveAction{
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.superview bringSubviewToFront:self];
}
-(void)gestureAction:(UIPanGestureRecognizer *)gesture {
    if (self.enableMove == NO) {
        return;
    }
    
    
    switch (gesture.state) {
        case UIGestureRecognizerStateBegan:{
            
            break;
        }
        case UIGestureRecognizerStateChanged: {
            
            CGPoint trans = [gesture translationInView:self.superview];
            self.center = CGPointMake(self.center.x+trans.x, self.center.y+trans.y);
            [gesture setTranslation:CGPointZero inView:self];
            
            break;
        }
        case UIGestureRecognizerStateEnded:{
            
//            CGPoint vPoint = [gesture velocityInView:self.superview];
//            CGFloat time = 1000/vPoint.x >1000/vPoint.y?1000/vPoint.x:1000/vPoint.y;
//            [UIView animateWithDuration:2
//                             animations:^{
//                                 
//                             }
//                             completion:^(BOOL finished) {
//                                 
//                             }];
//            break;
        }
            
        case UIGestureRecognizerStateCancelled: {
            
            break;
        }
            
        default:
            break;
    }
}
@end
