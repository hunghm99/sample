//
//  ViewController.m
//  TableView
//
//  Created by Hung Hoang on 7/21/22.
//

#import "ViewController.h"
#import "BookCell.h"
@interface ViewController ()

@end

@implementation ViewController
NSArray *books;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    books = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",nil];

    // Do any additional setup after loading the view.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BookCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BookCell"];
       if (cell == nil)
       {
           NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"BookCell" owner:self options:nil];
           cell = [nib objectAtIndex:0];
       }
    cell.label1.text = books[indexPath.row];
    cell.label2.text = books[indexPath.row + 1];
    cell.label3.text = books[indexPath.row + 2];
    return cell;
}

@end
