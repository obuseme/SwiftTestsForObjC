//
//  ViewControllerTests.swift
//  SwiftTestsForObjC
//
//  Created by Andy Obusek on 3/23/17.
//
//

import XCTest
@testable import SwiftTestsForObjC

class TestViewController: ViewController {
  dynamic var nameLabel: UILabel!
  dynamic var emailLabel: UILabel!
}

class ViewControllerTests: XCTestCase {

  func testViewDidLoad_SetsLabels_Always() {
    let name = "Andy"
    let email = "andy@notanemail.com"
    UserDefaults.standard.set(name, forKey: "name")
    UserDefaults.standard.set(email, forKey: "email")

    let toTest = TestViewController()
    toTest.viewDidLoad()

    XCTAssertEqual(name, toTest.nameLabel.text)
    XCTAssertEqual(email, toTest.emailLabel.text)
  }
    
}
