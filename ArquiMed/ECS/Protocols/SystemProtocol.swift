//
//  SystemProtocol.swift
//  ArquiMed
//
//  Created by Ricardo Venieris on 02/12/17.
//  Copyright © 2017 LES.PUC-RIO. All rights reserved.
//

protocol SystemProtocol:ECSProtocol {
    var entities:[Entity] {get set}
    var exam:Exam? {get set}
    
    var loop:Bool {get}
    
}

extension SystemProtocol {
    var loop:Bool {
        return true
    }
    
}

