//
//  ViewController+Testing.h
//  SwiftTestsForObjC
//
//  Created by Andy Obusek on 3/23/17.
//
//

// Private Category Trick to expose private properties for testing
@interface ViewController (Test)

@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UILabel *emailLabel;

@end

