//
//  PYViewController.m
//  PYPopViewHelper
//
//  Created by 林云鹤 on 08/06/2016.
//  Copyright (c) 2016 林云鹤. All rights reserved.
//

#import "PYViewController.h"
#import "PYPopViewHelper.h"

@interface PYViewController ()

@end

@implementation PYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.userInteractionEnabled = YES;
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showTest)]];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)showTest
{
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    testView.userInteractionEnabled = YES;
    [testView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissTest)]];
    testView.backgroundColor = [UIColor redColor];
    [PYPopViewHelper showPopWindow:testView fadeMode:PYPopViewHelperFadeModeTop];
}

- (void)dismissTest
{
    [PYPopViewHelper dismissPopWindow];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
