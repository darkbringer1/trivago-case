//
//  Prime.swift
//  TrivagoDescriptionViewController
//
//  Created by Dogukaan Kılıçarslan on 21.02.2022.
//

import Foundation

class Prime {
    
    class func findPrimes(of num: Int) -> [Int] {
        
        var startingNumber: Int = num
        var primeNumbers: [Int] = [Int]()
        var from: Int = 2
        
        while startingNumber > 1 {
            while (startingNumber % from) == 0 {
                primeNumbers.append(from)
                startingNumber /= from
            }
            from += 1
        }
        return primeNumbers
    }
    
}
