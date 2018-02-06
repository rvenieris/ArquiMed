//
//  ECSProtocol.swift
//  ArquiMed
//
//  Created by Ricardo Venieris on 31/01/18.
//  Copyright © 2018 LES.PUC-RIO. All rights reserved.
//

import Foundation

protocol ECSProtocol {
    var name:String {get set}
    var attributes: Dictionary<String, Any> {get set}
    
    // Functional vars
    var config:Bool {get}
    var run:Bool {get}
}



