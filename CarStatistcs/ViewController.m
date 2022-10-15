//
//  ViewController.m
//  CarStatistcs
//
//  Created by André Almeida on 2022-10-08.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)randomCar:(id)sender {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"RandomCars" ofType:@"plist"];
    
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSMutableArray *array = dict[@"Cars"];
    
    int randomNum = arc4random() % [array count];
    NSDictionary *dataSelect = array[randomNum];
    
    self.imageView.image = [UIImage imageNamed:dataSelect[@"Image"]];
    self.label1.text = dataSelect[@"Name"];
    self.label2.text = [NSString stringWithFormat: @"Top Speed: %@", dataSelect[@"Top Speed"]];
    self.label3.text = [NSString stringWithFormat: @"0-60: %@", dataSelect[@"0-60"]];
    self.label4.text = [NSString stringWithFormat: @"BHP: %@", dataSelect[@"BHP"]];
    self.label5.text = [NSString stringWithFormat: @"MPG: %@", dataSelect[@"MPG"]];
    self.label6.text = [NSString stringWithFormat: @"Price: %@", dataSelect[@"Price"]];
}
@end
