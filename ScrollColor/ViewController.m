//
//  ViewController.m
//  ScrollColor
//
//  Created by Victor Macintosh on 29/06/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;
@property (nonatomic) NSArray *colors;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.pagingEnabled = YES;
    
    self.colors = @[UIColor.redColor, UIColor.blueColor];
    
    self.view.backgroundColor = self.colors[0];
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    CGFloat offset = scrollView.contentOffset.x;
    self.view.backgroundColor = self.colors[(int)(offset / self.scrollView.frame.size.width)];
}

@end
