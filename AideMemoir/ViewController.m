//
//  ViewController.m
//  AideMemoir
//
//  Created by kevin bett on 9/29/12.
//  Copyright (c) 2012 rebelcolony. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  [self loadDocument:@"test.pages" inView:_myWebView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)loadDocument:(NSString*)documentName inView:(UIWebView*)webView
{
  NSString *path = [[NSBundle mainBundle] pathForResource:documentName ofType:nil];
  NSURL *url = [NSURL fileURLWithPath:path];
  NSURLRequest *request = [NSURLRequest requestWithURL:url];
  [webView loadRequest:request];
}



@end
