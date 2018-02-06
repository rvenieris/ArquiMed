//
//  EntityComponent.swift
//  ArquiMed
//
//  Created by Ricardo Venieris on 31/01/18.
//  Copyright © 2018 LES.PUC-RIO. All rights reserved.
//

class EntityComponent:EntityComponentProtocol {
    var name: String = ""
    var attributes: Dictionary<String, Any>
    
    convenience init() {
        self.init(attributes: [:])
    }
    
    required init(attributes: Dictionary<String, Any>) {
        self.attributes = attributes
        self.name = String(String(describing: self).split(separator: ".").last!)
        log(if: !self.config, name + " configuration fail!")
    }
    
    var config: Bool {
        return true
    }

    var run: Bool {
        return true
    }

    
}
