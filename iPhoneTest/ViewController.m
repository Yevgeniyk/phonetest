//
//  ViewController.m
//  iPhoneTest
//
//  Created by Kelman, Yevgeniy on 10/4/15.
//  Copyright (c) 2015 Kelman, Yevgeniy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *bGo;
- (IBAction)OnClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *eText;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end



@implementation ViewController
@synthesize eText;
@synthesize webView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OnClick:(id)sender {

    NSString *strURL = @"";
    
    if ([eText.text hasPrefix:@"http://"])
    {
        strURL = eText.text;
    }
    else
    {
        strURL = @"http://";
        strURL = [strURL stringByAppendingString:eText.text];
    }
    
    
    //    NSURL* nsUrl = [NSURL URLWithString:eText.text];
    NSURL* nsUrl = [NSURL URLWithString:strURL];
    
    NSURLRequest* request = [NSURLRequest requestWithURL:nsUrl cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30];
    
    [webView loadRequest:request ];
    
    
    
//    NSURL* nsUrl = [NSURL URLWithString:eText.text];
//    NSURLRequest* request = [NSURLRequest requestWithURL:nsUrl cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30];
    
//    [webView loadRequest:request ];
  //  [ eText setText:@"ss"];
}
@end
