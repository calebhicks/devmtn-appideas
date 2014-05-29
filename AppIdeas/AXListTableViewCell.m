//
//  AXTableViewCell.m
//  AppIdeas
//
//  Created by Caleb Hicks on 5/27/14.
//  Copyright (c) 2014 Dev Mountain. All rights reserved.
//

#import "AXListTableViewCell.h"

@implementation AXListTableViewCell


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        self.titleField = [[UITextField alloc]initWithFrame:CGRectMake(10, 10, self.frame.size.width, self.frame.size.height)];
        self.titleField.placeholder = @"Whachu got genius?";
        [self.contentView addSubview:self.titleField];
        
    }
    return self;
}

// add an update method here to set the text of the titleField

- (void)updateFieldText:(NSString *)updatedText
{
    self.titleField.text = updatedText;
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
