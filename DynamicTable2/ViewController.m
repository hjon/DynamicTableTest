//
//  ViewController.m
//  DynamicTable2
//
//  Created by Jon Hjelle on 6/26/14.
//  Copyright (c) 2014 Jon Hjelle. All rights reserved.
//

#import "ViewController.h"
#import "DynamicCell.h"
#import "DynamicCell2.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITableView* tableView;

@end


#define USE_CODE 0

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];

#if USE_CODE
    [self.tableView registerClass:[DynamicCell class] forCellReuseIdentifier:@"cell"];
#endif
    self.tableView.estimatedRowHeight = 44.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
#if USE_CODE
    DynamicCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
#else
    DynamicCell2* cell = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
#endif
    cell.headlineLabel.text = @"Testing";
    return cell;
}

@end
