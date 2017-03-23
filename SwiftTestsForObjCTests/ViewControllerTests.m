//
//  ViewControllerTests.m
//  SwiftTestsForObjC
//
//  Created by Andy Obusek on 3/23/17.
//
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

// Private Category Trick to expose private properties for testing
@interface ViewController (Test)

@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UILabel *emailLabel;

@end

@interface ViewControllerTests : XCTestCase

@end

@implementation ViewControllerTests

- (void)testViewDidLoad_SetsLabels_Always {
  NSString *name = @"Andy";
  NSString *email = @"andyo@notanemail.com";
  [[NSUserDefaults standardUserDefaults] setObject:name forKey:@"name"];
  [[NSUserDefaults standardUserDefaults] setObject:email forKey:@"email"];

  ViewController *toTest = [[ViewController alloc] init];
  [toTest viewDidLoad];
  XCTAssertEqualObjects(name, toTest.nameLabel.text);
  XCTAssertEqualObjects(email, toTest.emailLabel.text);
}

@end
