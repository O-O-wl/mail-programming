//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 08/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {

    func test1() {
        //Given
        let input = [ -1, 3, -1, 5 ]
        
        let expected = 7 // 3 + (-1) + 5
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(expected, result)
    }
    
    func test2() {
        //Given
        let input = [ -5, -3, -1 ]
        
        let expected = -1 // -1
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(expected, result)
    }
    
    func test3() {
        //Given
        let input = [ 2, 4, -2, -3, 8 ]
        
        let expected = 9 // 2 + 4 + (-2) + (-3) + 8
        
        //When
        let result = solution(input)
        
        //Then
        XCTAssertEqual(expected, result)
    }
}
