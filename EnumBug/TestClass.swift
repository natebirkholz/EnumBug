//
//  TestClass.swift
//  EnumBug
//
//  Created by Nate Birkholz on 2/10/16.
//  Copyright © 2016 Nate Birkholz. All rights reserved.
//

import UIKit


// If this enum is in this file, I am able to filter an array of TestStructs via enum case
// if it is in another file, I get the following error:
// /Users/natebirkholz/Documents/EnumBug/EnumBug/TestClass.swift:38:44: Cannot convert value of type '_ -> Bool' to expected argument type '(TestStruct) -> Bool'

public enum TestEnum {
    case test1, test2, test3
}

public struct TestStruct {
    let name : String
    let testEnum : TestEnum
    
    init(name: String, testEnum : TestEnum) {
        self.name = name
        self.testEnum = testEnum
    }
}

public class TestClass {
    let identifier : String
    var structs = [TestStruct]()
    
    init(identifier: String) {
        self.identifier = identifier
    }
    
    func fetchTest1Cases() -> [TestStruct] {
        let filtered = self.structs.filter({$0.testEnum == .test1})
        return filtered
    }
    
}
