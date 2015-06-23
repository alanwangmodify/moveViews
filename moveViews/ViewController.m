//
//  ViewController.m
//  moveViews
//
//  Created by apple on 15/6/23.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "MoveUIView.h"

@interface ViewController ()
{
    NSMutableArray *viewsArr ;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    viewsArr = [[NSMutableArray alloc] init];
    
    for (int i  = 0;i< 20; i++) {
        MoveUIView *view = [[MoveUIView alloc] initWithFrame:CGRectMake(20, 20+i*5, 100, 100)];
        view.backgroundColor = i%2==0 ?[UIColor yellowColor]:[UIColor blueColor];
        [self.view addSubview:view];
        [viewsArr addObject:view];
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
}

@end
