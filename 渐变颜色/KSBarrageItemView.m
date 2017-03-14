//
//  KSBarrageItemView.m
//  KwSing
//
//  Created by yuchenghai on 14/12/24.
//  Copyright (c) 2014年 kuwo.cn. All rights reserved.
//

#import "KSBarrageItemView.h"
//#import "UIView+Sizes.h"
//#import "KSBarrageView.h"
// rgb颜色转换（16进制->10进制）
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation KSBarrageItemView {
    UIImageView *_avatarView;
    UILabel *_contentLabel;
    UIImageView *_xbView;

}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
//        [self setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5]];
        
        
//        self.backgroundColor = [UIColor redColor];
        
        
        CAGradientLayer *gradient = [CAGradientLayer layer];
        gradient.frame = self.bounds;
        gradient.colors = [NSArray arrayWithObjects:(id)UIColorFromRGB(0x752ccd).CGColor,
                           (id)UIColorFromRGB(0xcd1f87).CGColor,nil];
        gradient.startPoint = CGPointMake(0, 0.5);
        gradient.endPoint = CGPointMake(1, 0.5);
        [self. layer  insertSublayer:gradient atIndex:0];

        
        
        
        
       
        _avatarView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [_avatarView.layer setMasksToBounds:YES];
        [_avatarView.layer setCornerRadius:15];
        [_avatarView.layer setBorderColor:[UIColor whiteColor].CGColor];
        [_avatarView.layer setBorderWidth:1.];
//        [_avatarView setImage:DEFAULAVATAR];
        [self addSubview:_avatarView];
        
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(35, 6, 1, 30)];
        [_contentLabel setFont:[UIFont systemFontOfSize:14]];
        [_contentLabel setTextColor:[UIColor whiteColor]];

        [_contentLabel setNumberOfLines:1];
        [self addSubview:_contentLabel];
//        self.backgroundColor = [UIColor redColor];
        [self.layer setMasksToBounds:YES];
        [self.layer setCornerRadius:15];
//        [self.layer setBorderColor:[UIColor whiteColor].CGColor];
//        [self.layer setBorderWidth:1.];
        
        

        [self setClipsToBounds:YES];
    }
    return self;
}
//- (void)setAvatarUrl:(NSString *)imageUrl withContent:(NSString *)content {
//    [_avatarView sd_setImageWithURL:[NSURL URLWithString:imageUrl] placeholderImage:DEFAULAVATAR];
//    [_contentLabel setText:content];
//    [_contentLabel sizeToFit];
//    self.width = _contentLabel.width+43;
//}

- (void)setAvatarWithImage:(UIImage *)image withContent:(NSString *)content {
    [_avatarView setImage:image];
    [_contentLabel setText:content];
    [_contentLabel sizeToFit];
//    self.width = _contentLabel.width+43;
}

- (void)setAvatarWithImageString:(NSString *)imageStr withContent:(NSString *)content {
    [self setAvatarWithImage:[UIImage imageNamed:imageStr] withContent:content];
}

@end
