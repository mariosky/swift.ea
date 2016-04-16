//
//  main.swift
//  swift.ea
//
//  Created by Mario Garcia Valdez on 4/15/16.
//  Copyright © 2016 geneura. All rights reserved.
//

import Foundation

let ITERATIONS = 100000;
let MAXLENGTH:UInt32 = 32768;



var length:UInt32 = 16;

func randomBool() -> Bool {
    return arc4random_uniform(2) == 0 ? true: false
}




repeat {
    
    var bits = [Bool]()
    
    for index in 1...length {
                bits.append(randomBool());
    }

    
    for i in 1...length {
        bits.append(randomBool());
    }
    
    let start = NSDate(); // <<<<<<<<<< Start time
    
    for i in 1...ITERATIONS{
        let index = Int(arc4random_uniform(length))
        bits [index] = !bits [index];
    }
    let end = NSDate();   // <<<<<<<<<<   end time
    
    
     let timeInterval: Double = end.timeIntervalSinceDate(start);
    
    var str = NSString(format: "Swift Bool Array,%d,%f",length, timeInterval)
    
    print(str)
    length = length*2;
    
} while length <= MAXLENGTH

