//
//  System.swift
//  ArquiMed
//
//  Created by Ricardo Venieris on 31/01/18.
//  Copyright © 2018 LES.PUC-RIO. All rights reserved.
//

import Foundation

class System: SystemProtocol {
    var name: String = "System"
    var attributes: Dictionary<String, Any> = [:]
    var entities: [Entity] = []
    var exam: Exam?
    
    internal init() {
        _ = self.config
    }
    
    var config: Bool {
        self.attributes["tabs"] = "      "
        return true
        
    }
    
    var run: Bool {
        print("Running", self.name)
        return true }
    
    
}
