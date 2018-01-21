//
//  LFSegmentTestVC.m
//  LFKit
//
//  Created by 张林峰 on 2018/1/21.
//  Copyright © 2018年 张林峰. All rights reserved.
//

#import "LFSegmentTestVC.h"
#import "LFSegmentView.h"
#import "LFSegmentScrollView.h"

@interface LFSegmentTestVC ()

@property (nonatomic, strong) LFSegmentView *segmentView;
@property (nonatomic, strong) LFSegmentScrollView *segmentScrollView;

@end

@implementation LFSegmentTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.segmentView = [[LFSegmentView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44) titles:@[@"热门",@"推荐",@"精品系列"]];
    [self.view addSubview:self.segmentView];
    
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor yellowColor];
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor greenColor];
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor blueColor];
    self.segmentScrollView = [[LFSegmentScrollView alloc] initWithFrame:CGRectMake(0, 44, self.view.frame.size.width, self.view.frame.size.height - 44) controller:self];
    self.segmentScrollView.viewControllers = @[vc1,vc2,vc3];
    self.segmentScrollView.segmentView = self.segmentView;
    [self.view addSubview:self.segmentScrollView];
    [self.segmentScrollView setSelectedAtIndex:0];
}

@end