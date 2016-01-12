//
//  TabBarController.m
//  News
//
//  Created by user on 1/11/16.
//  Copyright © 2016 user. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // selected tintColor for tabBar is black
   [[self tabBar] setTintColor:[UIColor blackColor]];
    
//    NSArray *tabs =  self.viewControllers;
//    UIViewController *tab1 = [tabs objectAtIndex:0];
//    tab1.tabBarItem.image = [[UIImage imageNamed:@"ic_autorenew"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    tab1.tabBarItem.selectedImage = [[UIImage imageNamed:@"second"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    UIViewController *tab2 = [tabs objectAtIndex:1];
//    tab2.tabBarItem.image = [[UIImage imageNamed:@"ic_radio_button_checked"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    tab2.tabBarItem.selectedImage = [[UIImage imageNamed:@"first"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}

@end
