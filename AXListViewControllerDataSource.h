//
//  AXListViewControllerDataSource.h
//  AppIdeas
//
//  Created by Caleb Hicks on 5/27/14.
//  Copyright (c) 2014 Dev Mountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AXListViewControllerDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) NSArray *arrayOfIdeas;

- (void)registerTableView:(UITableView *)tableView;

- (void)newItem;

@end
