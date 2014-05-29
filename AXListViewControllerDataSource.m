//
//  AXListViewControllerDataSource.m
//  AppIdeas
//
//  Created by Caleb Hicks on 5/27/14.
//  Copyright (c) 2014 Dev Mountain. All rights reserved.
//

#import "AXListViewControllerDataSource.h"
#import "AXListViewController.h"
#import "AXAddNewIdeaViewController.h"
#import "AXListTableViewCell.h"

static NSString * const cellIdentifier = @"identifier";

@interface AXListViewControllerDataSource ()


@end

@implementation AXListViewControllerDataSource

- (AXListTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AXListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.titleField.tag = indexPath.row;
    cell.titleField.delegate = self;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
    
    //return [self.arrayOfIdeas count];
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    NSString *sectionTitle = @"";
//    return sectionTitle;
//}

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[AXListTableViewCell class] forCellReuseIdentifier:cellIdentifier];
    
}

- (void)newItem {
    

    NSLog(@"Working");
    
    
//    AXAddNewIdeaViewController *viewController = [[AXAddNewIdeaViewController alloc]init];
//    
//    [self.navigationController pushViewController:viewController animated:YES];
//    
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{

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

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

@end
