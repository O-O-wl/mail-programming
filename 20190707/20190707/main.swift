//
//  main.swift
//  20190707
//
//  Created by 이동영 on 08/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

/// ===================================================================================
///                                     문제
/// ===================================================================================
//      정수 배열(int array)가 주어지면 가장 큰 이어지는 원소들의 합을 구하시오. 단, 시간복잡도는 O(n).
//
//      Given an integer array, find the largest consecutive sum of elements.
/// ===================================================================================

func solution(_ arr: [Int]) -> Int {
    var maxSum = arr[0];
    var currentSum = arr[0];
    
    for e in arr[1..<arr.count] {
        currentSum = currentSum + e > e ? currentSum + e : e
        maxSum = currentSum > maxSum ? currentSum : maxSum
    }
    return maxSum
}

/// ===================================================================================
///                                     풀이
/// ===================================================================================

//이 문제는 두개의 정수 변수로 현재의 합(currentSum) 과 전체의 제일 큰 합(max Sum)을 저장해야 합니다. 각 원소마다 (currentSum + 원소) 값을 원소 값이랑 비교하고, 더 큰 값이 currentSum이 됩니다. maxSum은 currentSum 이 바뀔때마다 체크하여 제일 큰 값을 저장하면 됩니다.

/// int solution(int[] arr) {
///       int maxSum = arr[0];
///       int currentSum = arr[0];
///       for(int i = 1; i < arr.length; i++) {
///           currentSum = Math.max(currentSum + arr[i], arr[i]);
///           maxSum = Math.max(currentSum, maxSum);
///       }
///       return maxSum;
/// }

//시간 복잡도: O(n)
//
//공간 복잡도: O(1)
