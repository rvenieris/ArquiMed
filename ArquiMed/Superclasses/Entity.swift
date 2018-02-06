//
//  Entity.swift
//  ArquiMed
//
//  Created by Ricardo Venieris on 31/01/18.
//  Copyright © 2018 LES.PUC-RIO. All rights reserved.
//

class Entity:EntityComponent, EntityProtocol {
    var components: [Component] = []
    
    override var run:Bool {
        let tabs = attributes["tabs"] as? String ?? "   *   "
        return super.run &&
               self.components.run
    }

}

