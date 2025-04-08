//
//  BubbleSort.swift
//
//  Created by Zak Goneau
//  Created on 2025-04-08
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  This program uses a bubble sort to sort an array of numbers

// Import library
import Foundation

// Define main function
func main() {

    // Declare size of array
    let SIZE = 10

    // Declare array
    var arrayNum: [Int] = [10]

    // Introduce program to user
    print("This program bubble sorts an array of random numbers.")

    // Fill array with random numbers
    for _ in 0..<SIZE {
        arrayNum.append(Int.random(in: 1...100))
    }

    // Print unsorted array
    print("Unsorted array: \(arrayNum)")

    // Bubble sort array
    for pass in 0..<arrayNum.count {

        // Loop through array
        for counter in 0..<arrayNum.count - pass - 1 {

            // Compare numbers
            if arrayNum[counter] > arrayNum[counter + 1] {

                // Swap numbers
                let temp = arrayNum[counter]
                arrayNum[counter] = arrayNum[counter + 1]
                arrayNum[counter + 1] = temp
            }
        }
    }

    // Print sorted array
    print("Sorted array: \(arrayNum)")
}

// Call function
main()
