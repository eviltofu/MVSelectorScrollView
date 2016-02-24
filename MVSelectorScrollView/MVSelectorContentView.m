/*
 * This file is part of the MVSelectorScrollView package.
 * (c) Andrea Bizzotto <bizz84@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE.md
 * file that was distributed with this source code.
 */


#import "MVSelectorContentView.h"
#import <QuartzCore/QuartzCore.h>

@implementation MVSelectorContentView

- (instancetype)initWithFrame:(CGRect)frame text:(NSString *)text;
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self createLabel:text];
    }
    return self;
}

- (void)createLabel:(NSString *)text {
    
    CGSize size = self.frame.size;
    CGRect labelFrame = CGRectMake(0.0f, 0.0f, size.width, size.height);
    self.label = [[UILabel alloc] initWithFrame:labelFrame];
    self.label.text = text;
    self.label.font = [UIFont fontWithName:@"SourceSansPro-Regular" size:60];
    self.label.backgroundColor = [UIColor clearColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.textColor = [UIColor colorWithWhite:0.9f alpha:0.3f];
    
//    self.label.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
//    self.label.layer.shadowOpacity = 0.15f;
//    self.label.layer.shadowRadius = 2.5f;
    
    [self addSubview:self.label];
}

- (void)setSelected:(BOOL)selected {
    
    float white = selected ? 0.9f : 0.9f;
    float alpha = selected ? 0.8f : 0.3f;
    self.label.textColor = [UIColor colorWithWhite:white alpha:alpha];
}

@end
