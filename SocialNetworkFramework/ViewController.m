//
//  ViewController.m
//  SocialNetworkFramework
//
//  Created by Misato Tina Alexandre on 9/29/13.
//  Copyright (c) 2013 Misato Tina Alexandre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backgroundTap:(id)sender {
    [self.textView resignFirstResponder];
}


- (IBAction)sahreButton:(id)sender {
    [self.textView resignFirstResponder];
    //[self messageLine:@"Post Message"];
    [self share];
}

-(void) share{
    NSString *text=@"Nice";
    UIImage *image=[UIImage imageNamed:@"IMG_4291.jpg"];
    NSArray *activitiesItem=@[text, image];
    UIActivityViewController *avc=[[UIActivityViewController alloc]initWithActivityItems:activitiesItem applicationActivities:nil];
    [self presentViewController:avc animated:YES completion:nil];
}

@end
