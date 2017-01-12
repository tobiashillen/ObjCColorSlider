//
//  ViewController.m
//  ColorSlider
//
//  Created by Tobias Hillén on 2017-01-12.
//  Copyright © 2017 Tobias Hillén. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UIView *colorView;

@end

@implementation ViewController

- (void) refreshColorView {
    self.colorView.backgroundColor = [self currentColor];
}

- (UIColor*)currentColor{
    return [UIColor colorWithRed:self.redSlider.value
                           green:self.greenSlider.value
                            blue:self.blueSlider.value
                           alpha:1.0];
}

- (IBAction)colorSliderChanged:(UISlider *)sender {
    [self refreshColorView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self refreshColorView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
