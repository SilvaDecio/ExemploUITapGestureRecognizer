//
//  ViewController.m
//  ExemploTap
//
//  Created by Décio Silva on 5/22/15.
//  Copyright (c) 2015 Décio Silva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tapAlert = [[UIAlertView alloc] initWithTitle:@"Gesture Recognized" message:@"Tapped on View!" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
    
    self.tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:(@selector(tapOnView:))];
    [self.view addGestureRecognizer:self.tapRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) tapOnView: (UITapGestureRecognizer *) tapRecognizer {
    [self.tapAlert show];
}

@end
