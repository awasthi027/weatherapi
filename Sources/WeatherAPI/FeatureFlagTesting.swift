//
//  File.swift
//  
//
//  Created by Ashish Awasthi on 12/02/24.
//

import Foundation

public class FeatureFlagTesting {

    public init() { }
    
    public func testFeatureFlag() -> String {
#if ENABLE_SOMETHING
        print("Hello World with DUMMY FLAG! 😊")
        return "Hello World with DUMMY FLAG! 😊"
#else
        print("Sadly Hello World 😢")
        return "Sadly Hello World 😢"
#endif
    }

}
