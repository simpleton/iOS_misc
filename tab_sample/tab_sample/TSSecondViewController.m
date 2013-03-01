//
//  TSSecondViewController.m
//  tab_sample
//
//  Created by simsun on 13-3-1.
//  Copyright (c) 2013年 edu.nwpu. All rights reserved.
//

#import "TSSecondViewController.h"

@interface TSSecondViewController ()

@end

@implementation TSSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    SIMLog(@"SecondView Nib init");
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    SIMLog(@"second View DidLoad");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
