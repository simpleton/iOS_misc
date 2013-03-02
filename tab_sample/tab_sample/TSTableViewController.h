//
//  TSTableViewController.h
//  tab_sample
//
//  Created by simsun on 13-3-1.
//  Copyright (c) 2013年 edu.nwpu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TSTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate> {
    UITableView *_tableView;
}

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *listData;
@property (strong, nonatomic) UISearchBar * mSearchBar;
@end
