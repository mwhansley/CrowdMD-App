//
//  InjuryTableController.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/13/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "InjuryTableController.h"
#import "InjuryTableCell.h"
#import "Injury.h"
#import "InjuryDetailViewController.h"

@interface InjuryTableController ()

@end

@implementation InjuryTableController
{
    NSMutableArray *injuries;
    NSArray *searchResults;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"InjuryCell";
    InjuryTableCell *cell = (InjuryTableCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[InjuryTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // Display recipe in the table cell
    Injury *injury = nil;
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        injury= [searchResults objectAtIndex:indexPath.row];
    } else {
        injury = [injuries objectAtIndex:indexPath.row];
    }
    
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:1];
    nameLabel.text = injury.name;
    UILabel *desciption = (UILabel *)[cell viewWithTag:2];
    desciption.text = injury.shortDescription;
    
    UIImageView* pictureView = (UIImageView *)[cell viewWithTag:3];
    pictureView.image = injury.picture;
    
    return cell;
}


- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchText];
    searchResults = [injuries filteredArrayUsingPredicate:resultPredicate];
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showInjuryDetail"]) {
        NSIndexPath *indexPath = nil;
        Injury *injury = nil;
        
        if (self.searchDisplayController.active) {
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            injury = [searchResults objectAtIndex:indexPath.row];
        } else {
            indexPath = [self.tableView indexPathForSelectedRow];
            injury = [injuries objectAtIndex:indexPath.row];
        }
        
        InjuryDetailViewController *destViewController = segue.destinationViewController;
        destViewController.injury = injury;
    }
}


- (void)viewDidLoad {
//    Injury * injuryOne = [[Injury alloc] init];
//    injuryOne.name = @"Tennis Elbow";
//    injuryOne.shortDescription = @"An overuse injury in the elbow that feels sharp and focused";
//    injuryOne.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
//    injuryOne.longDescription = @"Physical therapy or physiotherapy (sometimes abbreviated to PT) is the health care profession primarily concerned with the remediation of impairments and disabilities and the promotion of mobility, functional ability, quality of life and movement potential through examination, evaluation, diagnosis and physical intervention. ";
//    
//    Injury * injuryTwo = [[Injury alloc] init];
//    injuryTwo.name = @"Elbow Soreness";
//    injuryTwo.shortDescription = @"An overuse injury in the elbow that feels sharp and focused";
//    injuryTwo.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
//    injuryTwo.longDescription = @"Physical therapy or physiotherapy (sometimes abbreviated to PT) is the health care profession primarily concerned with the remediation of impairments and disabilities and the promotion of mobility, functional ability, quality of life and movement potential through examination, evaluation, diagnosis and physical intervention. ";
    
    injuries = [Injury injuries];
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
        
    } else {
        return [injuries count];
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
