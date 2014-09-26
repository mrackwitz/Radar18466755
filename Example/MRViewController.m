//
//  MRViewController.m
//  Example
//
//  Created by Marius Rackwitz on 26.09.14.
//  Copyright (c) 2013 Marius Rackwitz. All rights reserved.
//

#import "MRViewController.h"
#import "MRView.h"


@implementation MRViewController

- (IBAction)onShowIndeterminateProgressView:(id)sender {
    MRView *progressView = [[MRView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:progressView];
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [progressView removeFromSuperview];
    });
}

@end
