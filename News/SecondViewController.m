//
//  SecondViewController.m
//  News
//
//  Created by user on 1/11/16.
//  Copyright © 2016 user. All rights reserved.
//

#import "SecondViewController.h"
#import "InterestsViewController.h"
#import "AlertsViewController.h"


@interface SecondViewController ()
@property (nonatomic) CAPSPageMenu *pageMenu;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pageMenu.delegate = self;
    
    self.title = @"PAGE MENU";
    self.navigationController.navigationBar.barTintColor =[UIColor blackColor];
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
   [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};

    UIStoryboard * storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
 
    InterestsViewController * intrestsVC= [storyBoard instantiateViewControllerWithIdentifier:@"InterestsViewController"];
    intrestsVC.title = @"INTERESTS";
    
    AlertsViewController * alertsVC= [storyBoard instantiateViewControllerWithIdentifier:@"AlertsViewController"];
    alertsVC.title = @"ALERTS STREAM";
    
    
    NSArray *controllerArray = @[intrestsVC, alertsVC];
    NSDictionary *parameters = @{
                                 CAPSPageMenuOptionScrollMenuBackgroundColor:[UIColor blackColor],
                                 CAPSPageMenuOptionSelectionIndicatorColor: [UIColor whiteColor],
                                 CAPSPageMenuOptionBottomMenuHairlineColor: [UIColor blackColor],
                                 CAPSPageMenuOptionMenuItemFont: [UIFont fontWithName:@"HelveticaNeue" size:13.0],
                                 CAPSPageMenuOptionMenuHeight: @(60.0),
                                 CAPSPageMenuOptionMenuItemWidth: @(120.0),
                                 CAPSPageMenuOptionCenterMenuItems: @(YES)
                                 };
    
    _pageMenu = [[CAPSPageMenu alloc] initWithViewControllers:controllerArray
                                                        frame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
                                                      options:parameters];
    [self.view addSubview:_pageMenu.view];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)didTapGoToLeft {
    NSInteger currentIndex = self.pageMenu.currentPageIndex;
    
    if (currentIndex > 0) {
        [self.pageMenu moveToPage:currentIndex - 1];
    }
}

- (void)didTapGoToRight {
    NSInteger currentIndex = self.pageMenu.currentPageIndex;
    
    if (currentIndex < self.pageMenu.controllerArray.count) {
        [self.pageMenu moveToPage:currentIndex + 1];
    }
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
