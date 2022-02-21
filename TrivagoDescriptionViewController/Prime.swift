//
//  Prime.swift
//  TrivagoDescriptionViewController
//
//  Created by Dogukaan Kılıçarslan on 21.02.2022.
//

import Foundation

class Prime {
    
    static var val: Int = 0
    static var res: [Int] = []
    static var start: Int = 0
    
    static func calc(_ num: Int) -> [Int] {
        
        val = num
        res = [Int]()
        start = 2
        
        while val > 1 {
            while (val % start) == 0 {
                res.append(start)
                val /= start
            }
            incrementStart()
        }
        return res
    }
    
    static func incrementStart() {
        start += 1
    }
    
}
