//
//  DynamicCell.m
//  DynamicTable2
//
//  Created by Jon Hjelle on 6/26/14.
//  Copyright (c) 2014 Jon Hjelle. All rights reserved.
//

#import "DynamicCell.h"

@implementation DynamicCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _headlineLabel = [[UILabel alloc] initWithFrame:CGRectInset(self.bounds, 15.0, 0.0)];
        _headlineLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
        _headlineLabel.numberOfLines = 0;
        [self.contentView addSubview:_headlineLabel];

        _headlineLabel.translatesAutoresizingMaskIntoConstraints = NO;

        NSMutableArray* constraints = [NSMutableArray array];
        UIView* contentView = self.contentView;

        [constraints addObject:[NSLayoutConstraint constraintWithItem:_headlineLabel
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:contentView
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1.0
                                                             constant:20]];

        [constraints addObject:[NSLayoutConstraint constraintWithItem:contentView
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                               toItem:_headlineLabel
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1.0
                                                             constant:20]];

        [constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[_headlineLabel]-20-|"
                                                                                 options:0
                                                                                 metrics:nil
                                                                                   views:NSDictionaryOfVariableBindings(_headlineLabel)]];

        [self.contentView addConstraints:constraints];
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
