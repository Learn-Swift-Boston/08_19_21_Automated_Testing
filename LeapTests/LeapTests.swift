//
//  LeapTests.swift
//  LeapTests
//
//  Created by Matthew Dias on 8/19/21.
//

import XCTest
@testable import Leap

class LeapTests: XCTestCase {

    var sut: LeapLogicController!

    override func setUp() {
        super.setUp()

        sut = LeapLogicController()
    }

    // MARK: - isLeap() is true
    func test1988IsLeap() {
        XCTAssertTrue(sut.isLeap(year: 1988))
    }

    func test2000IsLeap() {
        XCTAssertTrue(sut.isLeap(year: 2000))
    }

    func test2004IsLeap() {
        XCTAssertTrue(sut.isLeap(year: 2004))
    }

    // MARK: - isLeap() is false
    func test1986IsNotLeap() {
        XCTAssertFalse(sut.isLeap(year: 1986))
    }

    func test1900IsNotLeap() { // 1900 is not a leap year because the sun.
        XCTAssertFalse(sut.isLeap(year: 1900))
    }

    func test1901IsNotLeap() {
        XCTAssertFalse(sut.isLeap(year: 1901))
    }

    // MARK: - getCalculation()
    func testGetCalculation() {
        let nonLeapYear = 1902
        XCTAssertEqual(sut.getCalculation(text: "\(nonLeapYear)"), "\(nonLeapYear) is NOT a leap year!", "this should not be a leap year")

        let leapYear = 2000
        XCTAssertEqual(sut.getCalculation(text: "\(leapYear)"), "\(leapYear) is a leap year!")
    }

    func testGettingCalculationStopsNonNumbers() {
        XCTAssertEqual(sut.getCalculation(text: "Hello Stream"), "Not a number!")
    }
}
