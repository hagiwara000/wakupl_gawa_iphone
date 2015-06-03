//
//  ViewController.m
//  wakupl_gawa_iphone
//
//  Created by 萩原 新之介 on 2015/05/27.
//  Copyright (c) 2015年 萩原 新之介. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadAddressUrl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadAddressUrl {
    
    NSURL *url = [NSURL URLWithString:@"http://wakupl.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [self.wv loadRequest:request];
    self.wv.scalesPageToFit = YES;
}
@end
