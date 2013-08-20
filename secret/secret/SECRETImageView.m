//
//  SECRETImageView.m
//  secret
//
//  Created by Joseph McArthur Gill on 8/19/13.
//  Copyright (c) 2013 Joseph McArthur Gill. All rights reserved.
//

#import "SECRETImageView.h"

@implementation SECRETImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //
    }
    return self;
}

-(void)handleSwipeFromRight {
    NSLog(@"swipe received to the right");
}

-(void)handleSwipeFromLeft {
    NSLog(@"swipe received to the left");
}

@end
