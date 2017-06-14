//
//  ViewController.m
//  TIMSDK
//
//  Created by litt1e-p on 01/17/2017.
//  Copyright (c) 2017 litt1e-p. All rights reserved.
//

#import "ViewController.h"
#import <ImSDK/TIMVersion.h>
#import <QALSDK/QalSDKProxy.h>
#import <TLSSDK/version.h>
#import <IMSDKBugly/IMSDKBugly.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"IMSDK version:%d", IMSDK_VERSION);
    NSLog(@"QalSDKProxy version:%@", [[QalSDKProxy sharedInstance] getSDKVer]);
    NSLog(@"TLSSDK version:%d", VERSION);
    NSLog(@"IMSDKBugly version:%@", [IMSDKBuglyConfig defaultConfig].version);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
