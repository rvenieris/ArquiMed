//
//  Extensions.swift
//  ArquiMed
//
//  Created by Ricardo Venieris on 31/01/18.
//  Copyright © 2018 LES.PUC-RIO. All rights reserved.
//

import Foundation

extension Array where Element: EntityComponentProtocol {
    var run:Bool {
        // do nothing if is Empty
        if self.isEmpty {
            print(String(describing: type(of:self)), "is empty")
            return true
        }
        for element in self {
            if !element.run {
                print("Error running",element.name, ". Aborting process")
                return false
            }
        }
        return true
    }
}

