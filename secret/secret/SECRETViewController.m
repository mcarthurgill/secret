//
//  SECRETViewController.m
//  secret
//
//  Created by Joseph McArthur Gill on 8/19/13.
//  Copyright (c) 2013 Joseph McArthur Gill. All rights reserved.
//

#import "SECRETViewController.h"
#import "SECRETImageView.h"

@interface SECRETViewController ()
@property (weak, nonatomic) IBOutlet SECRETImageView *secretImageView;
@property (weak, nonatomic) IBOutlet UILabel *secretLabel;

@end

@implementation SECRETViewController
@synthesize secretImageView = _secretImageView;
@synthesize secretLabel = _secretLabel;


-(void)viewDidLoad {
    self.secretLabel.textAlignment = NSTextAlignmentCenter;
    self.secretLabel.textColor = [UIColor whiteColor];
}

-(void)setSecretImageView:(SECRETImageView *)secretImageView {
    _secretImageView = secretImageView;
    UISwipeGestureRecognizer *recognizer;

    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self.secretImageView action:@selector(handleSwipeFromRight)];
    recognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [self.secretImageView addGestureRecognizer:recognizer];

    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self.secretImageView action:@selector(handleSwipeFromLeft)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionLeft)];
    [self.secretImageView addGestureRecognizer:recognizer];
}

- (IBAction)handleLike:(UIButton *)sender {
    if ([sender.currentTitle isEqualToString:@"Like"] ) {
        [self.secretImageView handleSwipeFromRight];
    }else {
        [self.secretImageView handleSwipeFromLeft];
    }
}
@end
