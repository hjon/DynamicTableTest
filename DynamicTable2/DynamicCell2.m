//
//  DynamicCell2.m
//  DynamicTable2
//
//  Created by Jon Hjelle on 6/26/14.
//  Copyright (c) 2014 Jon Hjelle. All rights reserved.
//

#import "DynamicCell2.h"

@implementation DynamicCell2

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
