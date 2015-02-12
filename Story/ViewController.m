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
@property (weak, nonatomic) IBOutlet UITextField *Name;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (nonatomic, strong) IBOutlet UISlider *slider;

@end

@implementation ViewController {
    NSString *name;
    bool simple;
}

- (void)viewDidLoad {
    simple = true;
    [_More setHidden:true];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)simpleOfMore:(id)sender {
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0) {
        //toggle the correct view to be visible
        simple = true;
        [_More setHidden:true];
    } else{
        //toggle the correct view to be visible
        simple = false;
        [_More setHidden:false];
    }
}
- (IBAction)stepper:(id)sender {
    
}
- (IBAction)slider:(id)sender {
    if (sender == _slider) {
        _sliderLabel.text = [NSString stringWithFormat:@"%f", _slider.value];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (void)textFieldDidBeginEditing:(UITextField *)Name {
    
}
- (IBAction)createStory:(id)sender {
    UIActionSheet *popup = [[UIActionSheet alloc] initWithTitle:@"Select Sharing option:" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:
                            @"Share on Facebook",
                            nil];
    popup.tag = 1;
    [popup showInView:[UIApplication sharedApplication].keyWindow];
}

-(BOOL) textFieldShouldReturn: (UITextField *)Name {
    name = _Name.text;
    [Name resignFirstResponder];
    [self.view endEditing:YES];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
