//
//  AquisicaoDeArtefato.swift
//  ArquiMed
//
//  Created by Ricardo Venieris on 16/12/17.
//  Copyright © 2017 LES.PUC-RIO. All rights reserved.
//

class ArtifactAcquisition:Entity {
    
    
    
    override var config: Bool {
        let tabs = self.attributes["tabs"] as? String ?? "      **       "
        let att:Dictionary = ["tabs":tabs + "     "]
        self.components = [
                            DataBaseGetter(attributes: att)
                          ]
        return true
    }

}
