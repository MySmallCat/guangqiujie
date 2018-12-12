//
//  ViewController.m
//  guangqiujie
//
//  Created by 刘兵 on 2018/12/11.
//  Copyright © 2018年 刘兵. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThreedViewController.h"
#import "ZWMSegment/ZWMSegmentController.h"


@interface ViewController ()
@property (nonatomic,strong) ZWMSegmentController * segmentVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"滑动控制器";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self test];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)test{
    self.navigationController.navigationBar.translucent = NO;
    
    FirstViewController *f = [[FirstViewController alloc] init];
    SecondViewController *s = [[SecondViewController alloc] init];
    FirstViewController *f1 = [[FirstViewController alloc] init];
    SecondViewController *s1 = [[SecondViewController alloc] init];
    FirstViewController *f2 = [[FirstViewController alloc] init];
//    SecondViewController *s2 = [[SecondViewController alloc] init];
//    FirstViewController *f3 = [[FirstViewController alloc] init];
//    SecondViewController *s3 = [[SecondViewController alloc] init];
//    FirstViewController *f4 = [[FirstViewController alloc] init];
//    SecondViewController *s4 = [[SecondViewController alloc] init];
//    FirstViewController *f5 = [[FirstViewController alloc] init];
//    FirstViewController *t = [[FirstViewController alloc] init];
    NSArray *array = @[f,s,f1,s1,f2];
    
    self.segmentVC = [[ZWMSegmentController alloc] initWithFrame:self.view.bounds titles:@[@"全部",@"进行中",@"赛程",@"赛果",@"筛选"]];
    self.segmentVC.segmentView.showSeparateLine = YES;
    self.segmentVC.segmentView.segmentTintColor = [UIColor redColor];
    self.segmentVC.viewControllers = [array copy];
    if (array.count==1) {
        self.segmentVC.segmentView.style=ZWMSegmentStyleDefault;
    } else {
        self.segmentVC.segmentView.style=ZWMSegmentStyleFlush;
    }
    //    [self.segmentVC  enumerateBadges:@[@(1),@10]];
    [self addSegmentController:self.segmentVC];
    [self.segmentVC  setSelectedAtIndex:0];
}

@end
