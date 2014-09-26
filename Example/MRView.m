//
//  MRView.m
//  Example
//
//  Created by Marius Rackwitz on 26.09.14.
//  Copyright (c) 2013 Marius Rackwitz. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>
#import "MRView.h"


@implementation MRView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.backgroundColor = [UIColor colorWithRed:0.5 green:0 blue:0 alpha:0.5];
    
    // Setup UIVisualEffectView
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight]];
    effectView.frame = CGRectMake(0, 0, 50, 50);
    [self addSubview:effectView];
    
    // Setup mask view
    UIView *maskView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    maskView.backgroundColor = UIColor.whiteColor;
    maskView.layer.cornerRadius = 10; // That's one motivation to provide a maskView for UIVisualEffectView, as it ignores its layer.cornerRadius.
    
    // Link the mask to the UIVisualEffectView
    effectView.maskView = maskView;
    
    // XXX: Set a break-point here
    NSLog(@"Bad on-screen rendering will happen on iPhone 6 and iPhone 6P here.");
    
    sleep(2); // Just to make the side-effect more obvious.
}

@end
