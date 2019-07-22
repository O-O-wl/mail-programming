//
//  main.swift
//  20190714
//
//  Created by 이동영 on 22/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

//  안녕하세요, 매일프로그래밍 이번주 문제입니다.
//
//  피보나치 배열은 0과 1로 시작하며,
//  다음 피보나치 수는 바로 앞의 두 피보나치 수의 합이 된다.
//  정수 N이 주어지면, N보다 작은 모든 짝수 피보나치 수의 합을 구하여라.
//
//예제)
//
//Input: N = 12
//
//Output: 10 // 0, 1, 2, 3, 5, 8 중 짝수인 2 + 8 = 10.

func solution(n: Int) -> Int {
    let arr = fibonacci(arr: [0,1], max: n)
    return arr.filter { $0 % 2 == 0 }.reduce(0, +)
}

func fibonacci(arr: [Int] , max: Int) -> [Int] {
    if max < arr.last! { return arr }
    let next = arr[arr.count-2] + arr[arr.count-1]
    return fibonacci(arr: arr + [next], max: max)
}
