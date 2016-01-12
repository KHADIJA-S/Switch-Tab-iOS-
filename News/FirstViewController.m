//
//  FirstViewController.m
//  News


#import "FirstViewController.h"
#import "UITabBarItem+CustomBadge.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tabBarItem setCustomBadgeValue:@"26" withFont:[UIFont fontWithName:@"HelveticaNeue" size:11.0]
                            andFontColor:[UIColor whiteColor]
                      andBackgroundColor:[UIColor blueColor]];
    
    
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   }


-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}
@end
