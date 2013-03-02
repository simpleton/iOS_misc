//
//  TSTableViewController.m
//  tab_sample
//
//  Created by simsun on 13-3-1.
//  Copyright (c) 2013年 edu.nwpu. All rights reserved.
//

#import "TSTableViewController.h"
#import "SBJson.h"
@interface TSTableViewController ()

@end

@implementation TSTableViewController
@synthesize tableView = _tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"TableView", @"TableView");
        self.tabBarItem.image = [UIImage imageNamed:@"first.png"];
    }
    SIMLog(@"tableView initWithNibName");
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.tabBarItem.image = [UIImage imageNamed:@"first.png"];
    self.listData = [[NSArray alloc] initWithObjects:@"test1", @"test2", @"test3", @"test4",nil];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.rowHeight = 50.0;
    
    self.mSearchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.bounds.size.width, 50.0)];
    self.mSearchBar.delegate = self;
    self.mSearchBar.showsCancelButton = YES;
    self.mSearchBar.showsBookmarkButton = YES;
    [self.view addSubview:self.mSearchBar];
//    [self.view addSubview:self.tableView];
    
    if (! [self.mSearchBar respondsToSelector:@selector(setSearchFieldBackgroundImage:forState:)]) {
        SIMLog(@"test");
    }
    SIMLog(@"viewDidLoad");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setTableView:(UITableView *)tableview {
    _tableView = tableview;
}

- (UITableView *) tableView {
    return _tableView;
}
#pragma mark -TableView DataSource

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listData.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *TableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableIdentifier];
    //view reuse
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableIdentifier];
    }
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [self.listData objectAtIndex:row];
    UIImage *image = [UIImage imageNamed:@"second.png"];
    cell.imageView.image = image;
    return cell;
}

#pragma mark - TableView Delegate

- (void)tableView:(UITableView *) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"hello table view");
}

#pragma mark -
#pragma mark UISearchBarDelegate

- (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar {
    SIMLog(@"searchBarBookmkarButtonClicked");
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    SIMLog(@"searchBarSearchButtonClicked");
    [self.mSearchBar resignFirstResponder];
}

- (void) searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    SIMLog(@"searchBarCancelButtonClicked");
    [self.mSearchBar resignFirstResponder];
}
@end
