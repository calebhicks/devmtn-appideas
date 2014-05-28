//
//  AXListViewController.m
//  AppIdeas
//
//  Created by Caleb Hicks on 5/27/14.
//  Copyright (c) 2014 Dev Mountain. All rights reserved.
//

#import "AXListViewController.h"
#import "AXListViewControllerDataSource.h"

@interface AXListViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) AXListViewControllerDataSource *dataSource; //q: why am i doing this?

@end

@implementation AXListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:tableView];
    
    AXListViewControllerDataSource *dataSource = [AXListViewControllerDataSource new];
    [dataSource registerTableView:tableView];
    self.dataSource = dataSource;
    
    tableView.dataSource = dataSource;
    self.tableView = tableView;
    
    self.navigationItem.title = @"App Ideas";
    self.navigationItem.prompt = @"Sample Prompt";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end