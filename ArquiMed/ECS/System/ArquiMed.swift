//
//  ArquiMed.swift
//  ArquiMed
//
//  Created by Ricardo Venieris on 31/01/18.
//  Copyright © 2018 LES.PUC-RIO. All rights reserved.
//

import Foundation

class ArquiMed: System {
    static var instance = ArquiMed()
    
    private override init() {
        super.init()
        self.name = "ArquiMed"
    }
    
    override var config:Bool {
        let att:Dictionary = ["tabs":"     "]

        self.entities = [
                         ArtifactAcquisition(attributes: att)
                        ,PreProcessing(attributes: att)
                        ,Segmentation(attributes: att)
                        ,DomainAttributesExtract(attributes: att)
                        ,Classification(attributes: att)
                        ,Interpretation(attributes: att)
                        ]
        return true
    }
    
    override var run:Bool {
        return super.run &&
               self.entities.run
    }
}
