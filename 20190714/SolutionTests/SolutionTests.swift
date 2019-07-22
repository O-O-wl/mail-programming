//
//  SolutionTests.swift
//  SolutionTests
//
//  Created by 이동영 on 22/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class SolutionTests: XCTestCase {
    func test01 () {
        let input = 12
        let expected = 10
        
        let result = solution(n: input)
        
        XCTAssertEqual(result, expected)
        
    }

}
