//
//  ViewController.swift
//  EnumBug
//
//  Created by Nate Birkholz on 2/10/16.
//  Copyright © 2016 Nate Birkholz. All rights reserved.
//

import UIKit

// If this enum is in this file, I am UNable to filter an array of TestStructs via enum case
// if it is in the same file as it is filtered, I can filter by the enum case

//public enum TestEnum {
//    case test1, test2, test3
//}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

