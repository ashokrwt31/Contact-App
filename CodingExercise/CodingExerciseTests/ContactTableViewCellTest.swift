//
//  ContactTableViewCellTest.swift
//  CodingExerciseTests
//
//  Created by Ashok Rawat on 28/10/20.
//  Copyright © 2020 Rise Buildings. All rights reserved.
//

import Foundation
import XCTest
@testable import CodingExercise

class ContactTableViewCellTest: XCTestCase {
 var cell: ContactTableViewCell?
    override func setUp() {
        super.setUp()
        cell = ContactTableViewCell(style: .default, reuseIdentifier: "ContactTableViewCell")
    }
    override func tearDown() {
        cell = nil
        super.tearDown()
    }
    func testConfigureCell() {
        let item = ContactItem(first_name: "Contact", image_url: "", last_name: "Example", tag_handle: "cExample")
        cell?.configureCell(item)
        XCTAssertEqual(cell?.userTag.text, "cExample")
    }
    
}
