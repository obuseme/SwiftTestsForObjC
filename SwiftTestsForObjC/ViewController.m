//
//  ViewController.m
//  SwiftTestsForObjC
//
//  Created by Andy Obusek on 3/23/17.
//
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UILabel *emailLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 30, 200, 20)];
  self.emailLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 200, 20)];

  [self.view addSubview:self.nameLabel];
  [self.view addSubview:self.emailLabel];

  self.nameLabel.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"name"];
  self.emailLabel.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"email"];
}

@end
