//
//  TSFirstViewController.m
//  tab_sample
//
//  Created by simsun on 13-3-1.
//  Copyright (c) 2013年 edu.nwpu. All rights reserved.
//

#import "TSFirstViewController.h"

@interface TSFirstViewController ()

@end

@implementation TSFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    SIMLog(@"FirstView initWithNibName");
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    SIMLog(@"First viewDidLoad");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
