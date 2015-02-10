//
//  ViewController.m
//  Story
//
//  Created by Davi Chaves on 2/9/15.
//  Copyright (c) 2015 Davi Chaves. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *More;

@end

@implementation ViewController {
    bool simple;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)simpleOfMore:(id)sender {
    if (UISegmentedControlSegmentLeft) {
        simple = true;
        [_More setHidden:true];
    }
    if (UISegmentedControlSegmentRight) {
        simple = false;
        [_More setHidden:false];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
